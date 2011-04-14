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

CREATE TABLE ephys (
	setup TINYINT UNSIGNED NOT NULL,
	session_start_time TIMESTAMP NOT NULL,
	ephys_start_time TIMESTAMP NOT NULL,
	ephys_path LONGTEXT NOT NULL,
	FOREIGN KEY (setup, session_start_time) REFERENCES sessions(setup,session_start_time) ON DELETE CASCADE ON UPDATE CASCADE,
	PRIMARY KEY (setup, session_start_time, ephys_start_time)
);
	

CREATE TABLE behavior (
	setup TINYINT UNSIGNED NOT NULL,
	session_start_time TIMESTAMP NOT NULL,
	beh_start_time TIMESTAMP NOT NULL,
	beh_path LONGTEXT NOT NULL,
	exp_type VARCHAR(45) NOT NULL,
	valid_trials INT,
	total_trials INT,
	FOREIGN KEY (setup, session_start_time) REFERENCES sessions(setup,session_start_time) ON DELETE CASCADE ON UPDATE CASCADE,
	PRIMARY KEY (setup, session_start_time, beh_start_time)
);
	