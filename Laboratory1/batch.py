from cassandra.cluster import Cluster

cluster = Cluster()
connection = cluster.connect('labwork1bd')

batch = """
BEGIN BATCH
INSERT INTO student (email, full_name)
VALUES ('user1@gmail.com', {surname:'Riadasdassyk', name:'Ihor', patronymic:'Serhiyovych'});

INSERT INTO data_form (email, name_data_form, answers_on_questions, adding_comment)
VALUES ('user2@gmail.com', 'data form2', 'answer1: c)', 'everything suits me...');

APPLY BATCH;
"""
connection.execute(batch)