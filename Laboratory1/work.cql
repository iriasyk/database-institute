//create index "Ind" on labwork1bd."data_form" (adding_comment);
//create index Ind2 on keyspace1."Stores_Holiday_Presents_Client" (character);

//INSERT
INSERT INTO student (email, full_name)
VALUES (''user1@gmail.com'', {surname:''Riasyk'', name:''Ihor'', patronymic:''Serhiyovych''});

INSERT INTO student (email, full_name)
VALUES (''user2@gmail.com'', {surname:''Riasykk'', name:''Ihorr'', patronymic:''Serhiyovychh''});

INSERT INTO student (email, full_name)
VALUES (''user3@gmail.com'', {surname:''Riasykkk'', name:''Ihorrr'', patronymic:''Serhiyovychhh''});

SELECT * FROM student;

//UPDATE
UPDATE student
SET full_name =  {surname:''Riasyk'', name:''Dmitry'', patronymic:''Serhiyovych''}
WHERE email = ''user1@gmail.com'';
SELECT * FROM student;

UPDATE student
SET full_name = {surname:''Buts'', name:''Alex'', patronymic:''Papovich''}
WHERE email = ''user2@gmail.com'';
SELECT * FROM student;

UPDATE student
SET full_name = {surname:''Hladkiy'', name:''Andriy'', patronymic:''Pavlovich''}
WHERE email = ''user3@gmail.com'';
SELECT * FROM student;

SELECT full_name
FROM student
WHERE email = ''user3@gmail.com'';

//DELETE
DELETE full_name
FROM student
WHERE email = ''user1@gmail.com'';
SELECT * FROM student;

DELETE full_name
FROM student
WHERE email = ''user2@gmail.com'';
SELECT * FROM student;

DELETE full_name
FROM student
WHERE email = ''user3@gmail.com'';
SELECT * FROM student;


//INSERT
INSERT INTO data_form (email, name_data_form, answers_on_questions, adding_comment)
VALUES (''user1@gmail.com'', ''data form1'', ''answer1: a), answer2: b)'', ''I think that the department needs...'');

INSERT INTO data_form (email, name_data_form, answers_on_questions, adding_comment)
VALUES (''user2@gmail.com'', ''data form2'', ''answer1: c)'', ''everything suits me...'');

INSERT INTO data_form (email, name_data_form, answers_on_questions, adding_comment)
VALUES (''user3@gmail.com'', ''data form3'', ''answer1: b), answer2: c), answer3: a)'', ''I think the department is very cool...'');

SELECT * FROM data_form;

//UPDATE

UPDATE data_form
SET adding_comment = ''simple update''
WHERE email = ''user1@gmail.com'' AND name_data_form = ''data form1'' AND answers_on_questions = ''answer1: a), answer2: b)'';
SELECT * FROM data_form;

UPDATE data_form
SET adding_comment = ''update comment)...''
WHERE email = ''user2@gmail.com'' AND name_data_form = ''data form2'' AND answers_on_questions = ''answer1: c)'';
SELECT * FROM data_form;

UPDATE data_form
SET adding_comment = ''update 3''
WHERE email = ''user3@gmail.com'' AND name_data_form = ''data form3'' AND answers_on_questions = ''answer1: b), answer2: c), answer3: a)'';
SELECT * FROM data_form;

SELECT email, adding_comment
FROM data_form
WHERE email = ''user2@gmail.com'';

//DELETE
DELETE adding_comment
FROM data_form
WHERE email = ''user1@gmail.com'' AND name_data_form = ''data form1'' AND answers_on_questions = ''answer1: a), answer2: b)'';
SELECT * FROM data_form;

DELETE adding_comment
FROM data_form
WHERE email = ''user2@gmail.com'' AND name_data_form = ''data form2'' AND answers_on_questions = ''answer1: c)'';
SELECT * FROM data_form;

DELETE adding_comment
FROM data_form
WHERE email = ''user3@gmail.com'' AND name_data_form = ''data form3'' AND answers_on_questions = ''answer1: b), answer2: c), answer3: a)'';
SELECT * FROM data_form;

//INSERT
INSERT INTO answers (departament_of_the_institute_data, email, answers_on_questions, adding_comment, name_data_form, perstange_of_dissatistisfied)
VALUES (''FPM'', ''user2@gmail.com'', ''answer1: c)'', ''null'', ''form 1'', ''float'');

INSERT INTO answers (departament_of_the_institute_data, email, answers_on_questions, adding_comment, name_data_form, perstange_of_dissatistisfied)
VALUES (''FPM2'', ''user3@gmail.com'', ''answer1: a)'', ''gg'', ''form 2'', ''true'');

INSERT INTO answers (departament_of_the_institute_data, email, answers_on_questions, adding_comment, name_data_form, perstange_of_dissatistisfied)
VALUES (''FPM3'', ''user1@gmail.com'', ''answer1: b)'', ''gg wp'', ''form 3'', ''float'');

SELECT * FROM answers;

//UPDATE
UPDATE answers
SET name_data_form = ''update form1''
WHERE departament_of_the_institute_data = ''FPM3'' AND email = ''user1@gmail.com'' AND answers_on_questions = ''answer1: b)'' AND adding_comment = ''gg wp'';

UPDATE answers
SET name_data_form = ''update form2''
WHERE departament_of_the_institute_data = ''FPM'' AND email = ''user2@gmail.com'' AND answers_on_questions = ''answer1: c)'' AND adding_comment = ''null'';

UPDATE answers
SET name_data_form = ''update form3''
WHERE departament_of_the_institute_data = ''FPM2'' AND email = ''user3@gmail.com'' AND answers_on_questions = ''answer1: a)'' AND adding_comment = ''gg'';

SELECT * FROM answers;

SELECT name_data_form
FROM answers
WHERE departament_of_the_institute_data = ''FPM3'' AND email = ''user1@gmail.com'' AND answers_on_questions = ''answer1: b)'' AND adding_comment = ''gg wp'';

//DELETE
DELETE name_data_form
FROM answers
WHERE departament_of_the_institute_data = ''FPM3'' AND email = ''user1@gmail.com'' AND answers_on_questions = ''answer1: b)'' AND adding_comment = ''gg wp'';
SELECT * FROM answers;

DELETE name_data_form
FROM answers
WHERE departament_of_the_institute_data = ''FPM'' AND email = ''user2@gmail.com'' AND answers_on_questions = ''answer1: c)'' AND adding_comment = ''null'';
SELECT * FROM answers;

DELETE name_data_form
FROM answers
WHERE departament_of_the_institute_data = ''FPM2'' AND email = ''user3@gmail.com'' AND answers_on_questions = ''answer1: a)'' AND adding_comment = ''gg'';
SELECT * FROM answers;