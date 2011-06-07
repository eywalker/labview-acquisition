DROP DATABASE IF EXISTS sessions;
CREATE DATABASE sessions;
USE sessions;
#GRANT ALL ON session TO 'timestamper'@'%' IDENTIFIED BY '0815';

CREATE TABLE sessions (
	setup TINYINT UNSIGNED NOT NULL,
	session_start_time DOUBLE NOT NULL,
	subject VARCHAR(45) NOT NULL,
	experimenter VARCHAR(45) NOT NULL,
	session_path LONGTEXT NOT NULL,
	PRIMARY KEY (setup, session_start_time)
);

CREATE TABLE session_timestamps (
	setup TINYINT UNSIGNED NOT NULL,
	session_start_time DOUBLE NOT NULL,
	channel INT NOT NULL,
	count INT UNSIGNED NOT NULL,
	time DOUBLE NOT NULL,
	FOREIGN KEY (setup, session_start_time) REFERENCES sessions(setup,session_start_time) ON DELETE RESTRICT ON UPDATE RESTRICT,
	PRIMARY KEY (setup, session_start_time, channel, count)
);

# Table to record all the electrophysiology recordings and link them to sessions
CREATE TABLE ephys (
	setup TINYINT UNSIGNED NOT NULL,
	session_start_time DOUBLE NOT NULL,
	ephys_start_time DOUBLE NOT NULL,
	ephys_stop_time DOUBLE,
	ephys_path LONGTEXT NOT NULL,
	FOREIGN KEY (setup, session_start_time) REFERENCES sessions(setup,session_start_time) ON DELETE RESTRICT ON UPDATE RESTRICT,
	PRIMARY KEY (setup, session_start_time, ephys_start_time)
);

# Table of stimulation sessions
CREATE TABLE stimulation (
	setup TINYINT UNSIGNED NOT NULL,
	session_start_time DOUBLE NOT NULL,
	stim_start_time DOUBLE NOT NULL,
	stim_stop_time DOUBLE,
	stim_path LONGTEXT NOT NULL,
	exp_type VARCHAR(45) NOT NULL,
	total_trials INT,
	correct_trials INT,
	incorrect_trials INT,
	FOREIGN KEY (setup, session_start_time) REFERENCES sessions(setup,session_start_time) ON DELETE RESTRICT ON UPDATE RESTRICT,
	PRIMARY KEY (setup, session_start_time, stim_start_time)
);

# Table of stimulation sessions
CREATE TABLE tber_pulses(
	setup TINYINT UNSIGNED NOT NULL,
	session_start_time DOUBLE NOT NULL,
	stim_start_time DOUBLE NOT NULL,
	time DOUBLE NOT NULL,
	FOREIGN KEY (setup, session_start_time, stim_start_time) REFERENCES stimulation(setup, session_start_time, stim_start_time) ON DELETE RESTRICT ON UPDATE RESTRICT,
	PRIMARY KEY (setup, session_start_time, stim_start_time,time)
);

# Table for all the traces
CREATE TABLE behavior_traces (
	setup TINYINT UNSIGNED NOT NULL,
	session_start_time DOUBLE NOT NULL,
	stim_start_time DOUBLE NOT NULL,
	beh_start_time DOUBLE NOT NULL,
	beh_stop_time DOUBLE,
	beh_path LONGTEXT NOT NULL,
	beh_traces_type VARCHAR(45) NOT NULL,
	FOREIGN KEY (setup, session_start_time, stim_start_time) REFERENCES stimulation(setup,session_start_time,stim_start_time) ON DELETE RESTRICT ON UPDATE RESTRICT,
	PRIMARY KEY (setup, session_start_time, stim_start_time)
);
