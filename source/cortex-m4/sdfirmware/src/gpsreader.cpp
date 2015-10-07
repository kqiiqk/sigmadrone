/*
 * gpsreader.cpp
 *
 *  Created on: Sep 27, 2015
 *      Author: svassilev
 */

#include "gpsreader.h"
#include "libgps/TinyGPS.h"

unsigned long millis()
{
	return static_cast<unsigned long>(TimeStamp::since_boot().milliseconds());
}

GPSReader::GPSReader() :
	uart_(
		{
		{PC_10, GPIO_MODE_AF_PP, GPIO_NOPULL, GPIO_SPEED_MEDIUM, GPIO_AF7_USART3},		/* USART3_TX_PIN */
		{PC_11, GPIO_MODE_AF_PP, GPIO_NOPULL, GPIO_SPEED_MEDIUM, GPIO_AF7_USART3},		/* USART3_RX_PIN */
		},
		USART3,
		DMA1,
		DMA1_Stream3,
		DMA_CHANNEL_4,
		DMA1_Stream1,
		DMA_CHANNEL_4,
		UART_HWCONTROL_NONE,
		9600,
		250),
	gps_power_(PB_0, DigitalOut::OutputDefault, DigitalOut::PullDefault, 1),
	gps_parser_(new TinyGPS()),
	buffer_(8)
{
}

GPSReader::~GPSReader()
{
	gps_power_.write(1);
	delete gps_parser_;
}

void GPSReader::start()
{
	uart_.uart_dmarx_start();
	gps_power_.write(0);
}

bool GPSReader::update_state()
{
	bool ret_val = process_read_data();
	if (!ret_val) {
		buffer_.reset();
		size_t retsize = uart_.read(reinterpret_cast<char*>(buffer_.get_write_ptr()),
				buffer_.write_size());
		buffer_.write_update(retsize);
		ret_val = process_read_data();
	}
	return ret_val;
}

bool GPSReader::process_read_data()
{
	bool data_ready = false;
	while (buffer_.read_size() > 0 && !data_ready) {
		data_ready = gps_parser_->encode(*buffer_.get_read_ptr());
		buffer_.read_update(1);
	}
	return data_ready;
}

float GPSReader::longitude()
{
	float lat, longit;
	gps_parser_->f_get_position(&lat, &longit);
	return longit != TinyGPS::GPS_INVALID_F_ANGLE ? longit : 0;
}

float GPSReader::lattitude()
{
	float lat, longit;
	gps_parser_->f_get_position(&lat, &longit);
	return lat != TinyGPS::GPS_INVALID_F_ANGLE ? lat : 0;
}

Altitude GPSReader::altitude()
{
	return Altitude::from_centimeters(gps_parser_->altitude() !=
			TinyGPS::GPS_INVALID_ALTITUDE ? gps_parser_->altitude() : -100000);
}

float GPSReader::speed()
{
	return gps_parser_->f_speed_kmph() != TinyGPS::GPS_INVALID_F_SPEED ?
			gps_parser_->f_speed_kmph() : 0;
}

float GPSReader::course()
{
	return gps_parser_->f_course() != TinyGPS::GPS_INVALID_F_ANGLE ? gps_parser_->f_course() :
			-360.0;
}

uint32_t GPSReader::satellite_count()
{
	return gps_parser_->satellites() != TinyGPS::GPS_INVALID_SATELLITES ? gps_parser_->satellites() : 0;
}