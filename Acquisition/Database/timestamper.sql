DROP DATABASE IF EXISTS sessions;
CREATE DATABASE sessions;
USE sessions;
GRANT ALL ON session TO 'timestamper'@'%' IDENTIFIED BY '0815';

CREATE TABLE sessions (
	setup TINYINT UNSIGNED NOT NULL,
	session_start_time TIMESTAMP NOT NULL,
	subject VARCHAR(45) NOT NULL,
	experimenter VARCHAR(45) NOT NULL,
	session_path LONGTEXT NOT NULL,
	PRIMARY KEY (setup, session_start_time)
);

# Table to record all the electrophysiology recordings and link them to sessions
CREATE TABLE ephys (
	setup TINYINT UNSIGNED NOT NULL,
	session_start_time TIMESTAMP NOT NULL,
	ephys_start_time TIMESTAMP NOT NULL,
	ephys_path LONGTEXT NOT NULL,
	FOREIGN KEY (setup, session_start_time) REFERENCES sessions(setup,session_start_time) ON DELETE CASCADE ON UPDATE CASCADE,
	PRIMARY KEY (setup, session_start_time, ephys_start_time)
);

# Table of stimulation sessions
CREATE TABLE stimulation(
	setup TINYINT UNSIGNED NOT NULL,
	session_start_time TIMESTAMP NOT NULL,
	stim_start_time TIMESTAMP NOT NULL,
	stim_path LONGTEXT NOT NULL,
	exp_type VARCHAR(45) NOT NULL,
	valid_trials INT,
	total_trials INT,
	FOREIGN KEY (setup, session_start_time) REFERENCES sessions(setup,session_start_time) ON DELETE CASCADE ON UPDATE CASCADE,
	PRIMARY KEY (setup, session_start_time, stim_start_time)
);

# Table for all the traces
CREATE TABLE behavior_traces (
	setup TINYINT UNSIGNED NOT NULL,
	session_start_time TIMESTAMP NOT NULL,
	stim_start_time TIMESTAMP NOT NULL,
	beh_start_time TIMESTAMP NOT NULL,
	beh_path LONGTEXT NOT NULL,
	beh_traces_type VARCHAR(45) NOT NULL,
	valid_trials INT,
	total_trials INT,
	FOREIGN KEY (setup, session_start_time, stim_start_time) REFERENCES stimulation(setup,session_start_time,stim_start_time) ON DELETE CASCADE ON UPDATE CASCADE,
	PRIMARY KEY (setup, session_start_time, stim_start_time)
);
