INSERT INTO lx_faq (description,priority,title,content) VALUES ('FAQ 1',1000,'FAQ 1','This is FAQ 1');
INSERT INTO lx_faq (description,priority,title,content) VALUES ('FAQ 2',2000,'FAQ 2','This is FAQ 2');
INSERT INTO lx_faq (description,priority,title,content) VALUES ('FAQ 3',3000,'FAQ 3','This is FAQ 3');

INSERT INTO lx_faq_group (description,title) VALUES('FAQ GROUP 1','FAQ GROUP 1');
INSERT INTO lx_faq_group (description,title) VALUES('FAQ GROUP 2','FAQ GROUP 2');

INSERT INTO lx_faq_group_faq (faq_group_id,faq_id) VALUES ((SELECT id FROM lx_faq_group WHERE title='FAQ GROUP 1'),(SELECT id FROM lx_faq WHERE title='FAQ 1'));
INSERT INTO lx_faq_group_faq (faq_group_id,faq_id) VALUES ((SELECT id FROM lx_faq_group WHERE title='FAQ GROUP 2'),(SELECT id FROM lx_faq WHERE title='FAQ 2'));
INSERT INTO lx_faq_group_faq (faq_group_id,faq_id) VALUES ((SELECT id FROM lx_faq_group WHERE title='FAQ GROUP 2'),(SELECT id FROM lx_faq WHERE title='FAQ 3'));

INSERT INTO lx_image (uri,title,width,height) VALUES ('http//testuri1','image 1',200,200);
INSERT INTO lx_image (uri,title,width,height) VALUES ('http//testuri2','image 2',300,400);

INSERT INTO lx_article (title,summary,content,image_id) VALUES ('article1','This is summary 1','content1',(SELECT id FROM lx_image WHERE title='image 1'));
INSERT INTO lx_article (title,summary,content,image_id) VALUES ('article2','This is summary 2','content2',(SELECT id FROM lx_image WHERE title='image 2'));
