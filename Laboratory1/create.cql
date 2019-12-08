CREATE KEYSPACE IF NOT EXISTS labwork1BD WITH replication = {
	'class': 'SimpleStrategy',
	'replication_factor': '1'
};

USE labwork1BD;

CREATE TYPE IF NOT EXISTS student_full_name (
	surname text,
	name text,
	patronymic text
);

CREATE TABLE IF NOT EXISTS student (
	email text,
	full_name FROZEN<student_full_name>,
	PRIMARY KEY ((email))
);


CREATE TABLE IF NOT EXISTS data_form (
	email text,
	name_data_form text,
	answers_on_questions text,
	adding_comment text,
	PRIMARY KEY ((email), name_data_form, answers_on_questions)
);

CREATE TABLE IF NOT EXISTS departament_of_the_institute (
	departament_of_the_institute_data text,
	PRIMARY KEY((departament_of_the_institute_data))
);

CREATE TABLE IF NOT EXISTS answers (
	departament_of_the_institute_data text,

	email text,

	answers_on_questions text,
	adding_comment text,
	name_data_form text,

	perstange_of_dissatistisfied text,

	PRIMARY KEY ((departament_of_the_institute_data), email, answers_on_questions, adding_comment)
);