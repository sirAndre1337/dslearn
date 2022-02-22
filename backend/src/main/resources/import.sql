INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob Brown', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES ('Bootcamp HTML' , 'https://guiadoestudante.abril.com.br/wp-content/uploads/sites/4/2021/06/Curso-de-programa%C3%A7%C3%A3o.jpg', 'https://institutoderh.com.br/wp-content/uploads/2020/07/Ativo-2.png');

INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2020-11-20T03:00:00Z', TIMESTAMP WITH TIME ZONE '2021-11-20T03:00:00Z' , 1);
INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('2.0', TIMESTAMP WITH TIME ZONE '2020-12-20T03:00:00Z', TIMESTAMP WITH TIME ZONE '2021-12-20T03:00:00Z' , 1);

INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Primeiro feedback de tarefa: favor revisar', TIMESTAMP WITH TIME ZONE '2020-12-10T03:00:00Z', true, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Segundo feedback: favor revisar', TIMESTAMP WITH TIME ZONE '2020-12-12T03:00:00Z', true, '/offers/1/resource/1/sections/1', 1);
INSERT INTO tb_notification (text, moment, read, route, user_id) VALUES ('Terceiro feedback: favor revisar', TIMESTAMP WITH TIME ZONE '2020-12-14T03:00:00Z', true, '/offers/1/resource/1/sections/1', 1);

INSERT INTO tb_resource (title, description, position, img_Uri, type , offer_id) VALUES ('Trilha HTML', 'trilha principal do curso' , 1 , 'https://guiadoestudante.abril.com.br/wp-content/uploads/sites/4/2021/06/Curso-de-programa%C3%A7%C3%A3o.jpg', 1 , 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type , offer_id) VALUES ('Forum', 'Tire suas duvidas' , 2 , 'https://guiadoestudante.abril.com.br/wp-content/uploads/sites/4/2021/06/Curso-de-programa%C3%A7%C3%A3o.jpg', 2 , 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type , offer_id) VALUES ('Lives', 'lives exclusivas para a turma' , 3 , 'https://guiadoestudante.abril.com.br/wp-content/uploads/sites/4/2021/06/Curso-de-programa%C3%A7%C3%A3o.jpg', 0 , 1);

INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('cap 01' , 'Neste capitulo vamos começar', 1 , 'https://guiadoestudante.abril.com.br/wp-content/uploads/sites/4/2021/06/Curso-de-programa%C3%A7%C3%A3o.jpg', 1 , null);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('cap 02' , 'Neste capitulo vamos continuar', 2 , 'https://guiadoestudante.abril.com.br/wp-content/uploads/sites/4/2021/06/Curso-de-programa%C3%A7%C3%A3o.jpg', 1 , 1);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('cap 03' , 'Neste capitulo vamos finalizar', 3 , 'https://guiadoestudante.abril.com.br/wp-content/uploads/sites/4/2021/06/Curso-de-programa%C3%A7%C3%A3o.jpg', 1 , 2);

INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refound_Moment, available, only_Update) VALUES (1, 1, TIMESTAMP WITH TIME ZONE '2020-12-10T13:00:00Z', null, true, false);
INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refound_Moment, available, only_Update) VALUES (2, 1, TIMESTAMP WITH TIME ZONE '2020-12-10T13:00:00Z', null, true, false);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 1 do cap 01' , 1, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (1, 'Material de apoio: abc' , 'https://www.youtube.com/watch?v=qL0qD3WkcFw');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 2 do cap 01' , 2, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (2, '' , 'https://www.youtube.com/watch?v=qL0qD3WkcFw');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 3 do cap 01' , 3, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (3, '' , 'https://www.youtube.com/watch?v=qL0qD3WkcFw');

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Tarefa do cap 01' , 4, 1);
INSERT INTO tb_task (id, description, question_Count, approval_count, weight, due_Date) VALUES (4, 'Fazer um trabalho legal' , 5, 4, 1.0, TIMESTAMP WITH TIME ZONE '2020-12-25T13:00:00Z');

INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (1, 1, 1);
INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (2, 1, 1);