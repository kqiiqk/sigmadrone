#ifndef IMUSENSOR_H_
#define IMUSENSOR_H_

class imu_sensor
{
public:
	struct double3d_t {
		double x;
		double y;
		double z;
	};
	enum open_mode_t {
		o_default = 0,
		o_nonblock = 1,
	};
	/**
	 * @filename The name of the device file. Example: /dev/gyro0
	 */
	imu_sensor(const std::string& filename, unsigned int trottle = 0, double scale = 1.0);

	~imu_sensor();

	/**
	 *
	 * @mode The mode used to open the device o_default corresponds to O_RDONLY, o_nonblock: O_RDONLY|O_NONBLOCK
	 */
	void open(open_mode_t mode = o_default);

	/**
	 * buffer pointer to array of double3d_t elements
	 * size the number of elements of type double3d_t
	 *
	 * Returns the number of elements of type double3d_t put into the buffer
	 */
	size_t read(double3d_t* buffer, size_t size);

	/**
	 * Calculate the average values over the number of samples read
	 * by using the read_raw function.
	 *
	 * Return: true if x, y, z are set, false otherwise. Normally false
	 * is returned if the device is opened with O_NONBLOCK and no new data
	 * is available yet.
	 */
	bool read_average(double& x, double& y, double &z);

	/**
	 * Calculate the average values over the number of samples read
	 * by using the read_raw function and then apply the current scale
	 * for the device.
	 *
	 * Return: true if x, y, z are set, false otherwise. Normally false
	 * is returned if the device is opened with O_NONBLOCK and no new data
	 * is available yet.
	 */
	bool read_scaled_average(double& x, double& y, double &z);

	void close();

	void enable();

	void disable();

	/**
	 * Get the sampling rate of the device.
	 */
	int get_rate();

	/**
	 * Set the sampling rate of the device.
	 */
	void set_rate(unsigned int rate);

	/**
	 * Set the number of samples to read in the FIFO before
	 * returning the data, for devices that have FIFO buffer
	 */
	int get_fifo_threshold();

	void set_fifo_threshold(unsigned int threshold);

	int get_full_scale();

	void set_full_scale(int scale);

	/**
	 * Reset the internal FIFO of the device.
	 */
	void reset_fifo();

protected:
	int fd_;
	std::string filename_;
	unsigned int trottle_;
	unsigned int trottle_counter_;
	double3d_t cached_value_;
	double scale_;
};


#endif
