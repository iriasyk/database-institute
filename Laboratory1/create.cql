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
	full_name FROZEN<student_full_name> static,
	PRIMARY KEY ((email))
);

CREATE TABLE IF NOT EXISTS data_form (
	email text,
	name_data_form text,
	answers_on_questions text,
	adding_comment text,
	PRIMARY KEY ((email), name_data_form, answers_on_questions, adding_comment)
);

CREATE TABLE IF NOT EXISTS answers (
	student FROZEN<student> static,
	data FROZEN<data_form> static,
	perstange_of_dissatistisfied set<float> static,
	perstange_of_satistisfied set<true> static,
	selected_comments text,
	PRIMARY KEY ((data), perstange_of_dissatistisfied, perstange_of_satistisfied, selected_comments)
);

CREATE TABLE IF NOT EXISTS departament_of_the_institute (
	data text,
	PRIMARY KEY((data))
);