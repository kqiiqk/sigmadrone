#include <string>
#include <sstream>
#include <stdexcept>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/ioctl.h>
#include <fcntl.h>
#include <errno.h>
#include "axesdata.h"
#include "imusensor.h"

imu_sensor::imu_sensor(const std::string& filename, unsigned int trottle, double adjustment)
	: fd_(-1)
	, filename_(filename)
	, trottle_(trottle)
	, trottle_counter_(0)
	, adjustment_(adjustment)
{
}

imu_sensor::~imu_sensor()
{
	close();
}

void imu_sensor::open(open_mode_t mode)
{
	if (filename_.empty()) {
		throw std::runtime_error(std::string("No device filename"));
	}
	switch (mode) {
	default:
	case o_default:
		fd_ = ::open(filename_.c_str(), O_RDONLY);
		break;
	case o_nonblock:
		fd_ = ::open(filename_.c_str(), O_RDONLY | O_NONBLOCK);
		break;
	}
	if (fd_ < 0) {
		throw std::runtime_error(std::string("Failed to open device file: ") + filename_);
	}
}

bool imu_sensor::isopen() const
{
	return (fd_ >= 0) ? true : false;
}

std::string imu_sensor::filename() const
{
	return filename_;
}

size_t imu_sensor::read(double3d_t* buffer, size_t size) const
{
	short3d_t data[64];
	size_t records = (size < (sizeof(data)/sizeof(data[0]))) ? size : sizeof(data)/sizeof(data[0]);
	int ret;

	if (trottle_ && (trottle_counter_++ % trottle_)) {
		return 0;
	}
	errno = 0;
	ret = ::read(fd_, data, records * sizeof(short3d_t));
	if (ret < 0) {
		if (errno == EAGAIN) {
			return 0;
		} else {
			std::stringstream code;
			code << errno;
			throw std::runtime_error(std::string("Failed to read sensor data from: ") + filename_ + std::string(", error code: ") + code.str());
		}
	}
	records = ret / sizeof(short3d_t);
	ret = 0;
	for (unsigned int i = 0; i < size; i++) {
		if (!records)
			break;
		buffer->x = data[i].x * adjustment_;
		buffer->y = data[i].y * adjustment_;
		buffer->z = data[i].z * adjustment_;
		++ret;
		++buffer;
		--records;
	}
	return ret;
}

bool imu_sensor::read_average(double& x, double& y, double &z) const
{
	double3d_t data[64];
	int records = read(data, sizeof(data)/sizeof(data[0]));
	if (!records)
		return false;
	x = y = z = 0;
	for (int i = 0; i < records; i++) {
		x += data[i].x;
		y += data[i].y;
		z += data[i].z;
	}
	x /= records;
	y /= records;
	z /= records;
	return true;
}

bool imu_sensor::read_scaled_average(double& x, double& y, double &z) const
{
	if (!read_average(x, y, z))
		return false;
	double fullscale = get_full_scale();
	x *= fullscale / 32768;
	y *= fullscale / 32768;
	z *= fullscale / 32768;
	return true;
}

void imu_sensor::close()
{
	if (fd_ >= 0)
		::close(fd_);
}


void imu_sensor::enable()
{
	if (ioctl(fd_, AXISDATA_IOC_SETENABLED, 1) < 0) {
		std::stringstream code;
		code << errno;
		throw std::runtime_error(std::string("Failed to enable device: ") + filename_ + std::string(", error code: ") + code.str());
	}
}

void imu_sensor::disable()
{
	if (ioctl(fd_, AXISDATA_IOC_SETENABLED, 0) < 0) {
		std::stringstream code;
		code << errno;
		throw std::runtime_error(std::string("Failed to disable device: ") + filename_ + std::string(", error code: ") + code.str());
	}
}

int imu_sensor::get_rate() const
{
	int rate = ioctl(fd_, AXISDATA_IOC_GETRATE, 0);
	if (rate < 0) {
		std::stringstream code;
		code << errno;
		throw std::runtime_error(std::string("Failed to get rate for device: ") + filename_ + std::string(", error code: ") + code.str());
	}

	return rate;
}

void imu_sensor::set_rate(unsigned int rate)
{
	if (ioctl(fd_, AXISDATA_IOC_SETRATE, rate) < 0) {
		std::stringstream strcode;
		std::stringstream strrate;
		strcode << errno;
		strrate << rate;
		throw std::runtime_error(std::string("Failed to set rate: ") + strrate.str() + ", for device: " + filename_ + std::string(", error code: ") + strcode.str());
	}
}

int imu_sensor::get_fifo_threshold() const
{
	int threshold = ioctl(fd_, AXISDATA_IOC_GETWATERMARK, 0);
	if (threshold < 0) {
		std::stringstream code;
		code << errno;
		throw std::runtime_error(std::string("Failed to get fifo threshold for device: ") + filename_ + std::string(", error code: ") + code.str());
	}
	return threshold;
}

void imu_sensor::set_fifo_threshold(unsigned int threshold)
{
	if (ioctl(fd_, AXISDATA_IOC_SETWATERMARK, threshold) < 0) {
		std::stringstream strcode;
		std::stringstream strthreshold;
		strcode << errno;
		strthreshold << threshold;
		throw std::runtime_error(std::string("Failed to set threshold: ") + strthreshold.str() + ", for device: " + filename_ + std::string(", error code: ") + strcode.str());
	}
}

int imu_sensor::get_full_scale() const
{
	int scale = ioctl(fd_, AXISDATA_IOC_GETSCALE, 0);
	if (scale < 0) {
		std::stringstream code;
		code << errno;
		throw std::runtime_error(std::string("Failed to get scale for device: ") + filename_ + std::string(", error code: ") + code.str());
	}
	return scale;
}

void imu_sensor::set_full_scale(int scale)
{
	if (ioctl(fd_, AXISDATA_IOC_SETSCALE, scale) < 0) {
		std::stringstream strcode;
		std::stringstream strscale;
		strcode << errno;
		strscale << scale;
		throw std::runtime_error(std::string("Failed to set scale: ") + strscale.str() + ", for device: " + filename_ + std::string(", error code: ") + strcode.str());
	}
}

void imu_sensor::set_adjustment(double adjustment)
{
	adjustment_ = adjustment;
}

double imu_sensor::get_adjustment()
{
	return adjustment_;
}


void imu_sensor::reset_fifo()
{
	int ret = ioctl(fd_, AXISDATA_IOC_GETSCALE, 0);
	if (ret < 0) {
		std::stringstream code;
		code << errno;
		throw std::runtime_error(std::string("Failed to reset FIFO for device: ") + filename_ + std::string(", error code: ") + code.str());
	}
}