/*
 *  Sigmadrone
 *  Copyright (c) 2013-2015 The Sigmadrone Developers
 *
 *  This program is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation, either version 3 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *
 *  Martin Stoilov <martin@sigmadrone.org>
 *  Svetoslav Vassilev <svassilev@sigmadrone.org>
 */
#include <stdio.h>
#include <ctime>

#define BOOST_NO_CXX11_SCOPED_ENUMS
#include <boost/filesystem.hpp>
#include "logfile.h"


logfile::logfile(const std::string& path, size_t rotsize, message_type level, bool log_date_time)
	: pfile_(NULL)
	, logfile_(boost::filesystem::system_complete(boost::filesystem::path(path)).string())
	, rotext_(".0")
	, rotsize_(rotsize)
	, msgcount_(default_msgcount)
	, level_(level)
	, log_date_time_(log_date_time)
{
	init();
	if ((pfile_ = fopen(logfile_.c_str(), "a")) == NULL)
		throw(std::runtime_error("Failed to open log file: " + logfile_));
}

logfile::~logfile()
{
	add_log(logfile::info, "Destroying log file.");
	if (pfile_)
		fclose(pfile_);
}

void logfile::init()
{
	strlevels_.push_back("NONE    ");
	strlevels_.push_back("CRITICAL");
	strlevels_.push_back("ERROR   ");
	strlevels_.push_back("WARNING ");
	strlevels_.push_back("INFO    ");
	strlevels_.push_back("DEBUG   ");
}

int logfile::log_level(message_type level)
{
	level_ = level;
	return (int)level_;
}

int logfile::log_level(const std::string& level)
{
	if (level == "none")
		level_ = none;
	else if (level == "critical")
		level_ = critical;
	else if (level == "error")
		level_ = error;
	else if (level == "info")
		level_ = info;
	else if (level == "debug")
		level_ = debug;
	return (int)level_;
}

int logfile::log_level()
{
	return (int)level_;
}

int logfile::get_fd()
{
	if (!pfile_)
		return -1;
	return fileno(pfile_);
}

std::string logfile::get_message_type(message_type level)
{
	if (level >= strlevels_.size())
		return std::string("UNKNOWN ");
	return strlevels_[level];
}

std::string logfile::get_time()
{
    char run_date[200];
    std::time_t tod;
    std::time( &tod );
    std::strftime(run_date, sizeof(run_date), "%Y-%m-%d %H:%M:%S", std::localtime( &tod ) );
    return std::string(run_date);
}

bool logfile::add_log(message_type type, const char *fmt, ...)
{
	bool result = true;
	va_list args;

	if (type > none && type <= level_) {
		va_start(args, fmt);
		result = add_log_v(type, fmt, args);
		va_end(args);
	}
	return result;
}

bool logfile::add_log_v(message_type type, const char *fmt, va_list args)
{
	if (type > none && type <= level_) {
		boost::lock_guard<boost::mutex> lock(m_);
		if (log_date_time_) {
			fprintf(pfile_, "%s; %s; ", get_time().c_str(), get_message_type(type).c_str());
		}
		vfprintf(pfile_, fmt, args);
		fprintf(pfile_, "\n");
		fflush(pfile_);
		if (--msgcount_ <= 0) {
			msgcount_ = default_msgcount;
			rotate();
		}
	}
	return true;
}

std::string logfile::get_log_filepath()
{
	return logfile_;
}

void logfile::set_log_filepath(const std::string& path)
{
	logfile_ = boost::filesystem::system_complete(boost::filesystem::path(path)).string();
}

void logfile::set_max_size(size_t rotsize)
{
	rotsize_ = rotsize;
}

void logfile::set_rotation_extension(const std::string& oldext)
{
	rotext_ = oldext;
}

void logfile::rotate()
{
	boost::system::error_code ec;
	boost::filesystem::path cur_filepath(logfile_);
	boost::filesystem::path old_filepath(logfile_ + rotext_);

	if (boost::filesystem::file_size(cur_filepath) > rotsize_) {
		boost::filesystem::copy_file(cur_filepath, old_filepath, boost::filesystem::copy_option::overwrite_if_exists, ec);
		if (!ec) {
			FILE *truncfile = fopen(logfile_.c_str(), "w");
			if (truncfile)
				fclose(truncfile);
		}
	}
}

void logfile::enable_disable_date_prefix(bool enable_date_prefix)
{
	log_date_time_ = enable_date_prefix;
}
