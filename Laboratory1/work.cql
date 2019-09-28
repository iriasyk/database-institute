//INSERT
INSERT INTO student (email, full_name)
VALUES ('user1@gmail.com',{surname:'Riasyk', name:'Ihor', patronymic:'Serhiyovych'});

INSERT INTO student (email, full_name)
VALUES ('user2@gmail.com',{surname:'Riasykk', name:'Ihorr', patronymic:'Serhiyovychh'});

INSERT INTO student (email, full_name)
VALUES ('user3@gmail.com',{surname:'Riasykkk', name:'Ihorrr', patronymic:'Serhiyovychhh'});

SELECT * FROM student;

//UPDATE
UPDATE student 
SET full_name = {surname: 'Riasyk_update'} 
WHERE email = 'user1@gmail.com';
SELECT * FROM student;

UPDATE student 
SET full_name = {'Riasyk__update', name:'Ihor__update'}
WHERE email = 'user2@gmail.com';
SELECT * FROM student;

UPDATE student 
SET full_name = {'Riasyk___update', name:'Ihor___update'}
WHERE email = 'user3@gmail.com';
SELECT * FROM student;

SELECT full_name
FROM student
WHERE email = 'user3@gmail.com';

//DELETE
DELETE full_name
FROM student
WHERE email = 'user1@gmail.com';
SELECT * FROM student;

DELETE full_name
FROM student
WHERE email = 'user2@gmail.com';
SELECT * FROM student;

DELETE full_name
FROM student
WHERE email = 'user3@gmail.com';
SELECT * FROM student;


//INSERT
INSERT INTO data_form (email, name_data_form, answers_on_questions, adding_comment)
VALUES ('user1@gmail.com', 'data form1', 'answer1: a), answer2: b)', 'I think that the department needs...');

INSERT INTO data_form (email, name_data_form, answers_on_questions, adding_comment)
VALUES ('user2@gmail.com', 'data form2', 'answer1: c)', 'everything suits me...');

INSERT INTO data_form (email, name_data_form, answers_on_questions, adding_comment)
VALUES ('user3@gmail.com', 'data form3', 'answer1: b), answer2: c), answer3: a)', 'I think the department is very cool...');

SELECT * FROM data_form;

//UPDATE
UPDATE data_form 
SET adding_comment = 'gg' 
WHERE email = 'user1@gmail.com' AND name_data_form = 'data form1';
SELECT * FROM data_form;

UPDATE data_form 
SET answers_on_questions = 'gg wp' 
WHERE email = 'user2@gmail.com'
SELECT * FROM data_form;

UPDATE data_form 
SET name_data_form = 'test data form 3' 
WHERE email = 'user3@gmail.com' AND answers_on_questions = 'answer1: b), answer2: c), answer3: a)';
SELECT * FROM data_form;

SELECT email, name_data_form
FROM data_form 
WHERE email = 'user2@gmail.com';

//DELETE
DELETE answers_on_questions
FROM data_form
WHERE email = 'user1@gmail.com' AND adding_comment = 'gg';
SELECT * FROM data_form;

DELETE adding_comment
FROM data_form
WHERE email = 'user2@gmail.com' AND answers_on_questions = 'gg wp';
SELECT * FROM data_form;

DELETE name_data_form
FROM data_form
WHERE email = 'user3@gmail.com';
SELECT * FROM data_form;

//INSERT
INSERT INTO answers (student, data, perstange_of_dissatistisfied, perstange_of_satistisfied, selected_comments)
VALUES ({'surname': 'Riasyk', 'name': 'Ihor', 'patronymic': 'Serhiyovuch'}, {'email': 'user1@gmail.com', 'name_data_form': 'data form1', 'answers_on_questions':'answer1: b)', 'adding_comment':'...1'}, '', 'true', '...comments1');

INSERT INTO answers (student, data, perstange_of_dissatistisfied, perstange_of_satistisfied, selected_comments)
VALUES ({'surname': 'Riasykk', 'name': 'Ihorr', 'patronymic': 'Serhiyovuchh'}, {'email': 'user2@gmail.com', 'name_data_form': 'data form2', 'answers_on_questions':'answer1: c)', 'adding_comment':'...2'}, 'true', '', '...comments2');

INSERT INTO answers (student, data, perstange_of_dissatistisfied, perstange_of_satistisfied, selected_comments)
VALUES ({'surname': 'Riasykkk', 'name': 'Ihorrr', 'patronymic': 'Serhiyovuchhh'}, {'email': 'user3@gmail.com', 'name_data_form': 'data form3', 'answers_on_questions':'answer1: a)', 'adding_comment':'...3'}, '', 'true', '...comments3');

SELECT * FROM answers;

//UPDATE
UPDATE answers 
SET student['name'] = 'Kolya' 
WHERE email = 'user1@gmail.com'
SELECT * FROM answers;

UPDATE answers 
SET student['patronymic'] = 'Petrovych' 
WHERE email = 'user2@gmail.com'
SELECT * FROM answers;

UPDATE answers 
SET data[name_data_form]='test data form wtf'
WHERE email = 'user3@gmail.com' AND selected_comments = '...comments3' AND perstange_of_satistisfied = 'true';

SELECT * FROM answers;

SELECT data
FROM answers
WHERE email = 'user3@gmail.com';

//DELETE
DELETE data
FROM answers
WHERE email = 'user1@gmail.com' AND student['name'] = 'Kolya' 
SELECT * FROM answers;

DELETE perstange_of_dissatistisfied
FROM answers
WHERE email = 'user2@gmail.com' AND student['name'] = 'Kolya' AND student['patronymic'] = 'Petrovych'
SELECT * FROM answers;

DELETE selected_comments
FROM answers
WHERE email = 'user3@gmail.com';
SELECT * FROM answers;