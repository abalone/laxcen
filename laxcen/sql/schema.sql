DROP TABLE IF EXISTS lx_contentfragment_ml;
DROP TABLE IF EXISTS lx_contentfragment;
DROP TABLE IF EXISTS lx_article_ml;
DROP TABLE IF EXISTS lx_article;
DROP TABLE IF EXISTS lx_image_ml;
DROP TABLE IF EXISTS lx_image;

CREATE TABLE lx_contentfragment (
	id INT(11) NOT NULL AUTO_INCREMENT,
	contentKey VARCHAR(64),
	contentValue TEXT,
	PRIMARY KEY(id)
);

CREATE TABLE lx_contentfragment_ml (
	id INT(11) NOT NULL AUTO_INCREMENT,
	contentValue TEXT,
	contentfragment_id INT(11),
	locale VARCHAR(16),
	CONSTRAINT lx_contentfragment_ml_contentfragment FOREIGN KEY (contentfragment_id) REFERENCES lx_contentfragment(id),
	PRIMARY KEY(id)
);

CREATE TABLE lx_article (
	id INT(11) NOT NULL AUTO_INCREMENT,
	title VARCHAR(256),
	summary VARCHAR(1024),
	content TEXT,
	image_id INT(11),
	PRIMARY KEY(id)
);

CREATE TABLE lx_article_ml (
	id INT(11) NOT NULL AUTO_INCREMENT,
	title VARCHAR(256),
	summary VARCHAR(1024),
	content TEXT,
	article_id INT(11),	
	locale VARCHAR(16),
	CONSTRAINT lx_article_ml_article FOREIGN KEY (article_id) REFERENCES lx_article(id),
	PRIMARY KEY(id)
);

CREATE TABLE lx_image (
	id INT(11) NOT NULL AUTO_INCREMENT,
	uri VARCHAR(256),
	title VARCHAR(512),
	width SMALLINT,
	height SMALLINT,
	PRIMARY KEY(id)
);

CREATE TABLE lx_image_ml (
	id INT(11) NOT NULL AUTO_INCREMENT,
	title VARCHAR(512),
	image_id INT(11),
	locale VARCHAR(16),
	CONSTRAINT lx_image_ml_image FOREIGN KEY (image_id) REFERENCES lx_image(id),
	PRIMARY KEY(id)
);

/*
CREATE TABLE lx_product (
	id INT,
	name VARCHAR(64),
	size VARCHAR(64),
	chip VARCHAR(64),
	epcMemory VARCHAR(64),
	userMemory VARCHAR(64),
	tidMemory VARCHAR(64),
	application VARCHAR(64),
	addition VARCHAR(64),
	picPath VARCHAR(256),
	pdfPath VARCHAR(256),
	protocol VARCHAR(64),
	
);

CREATE TABLE lx_solution (){
};
*/
DROP TABLE IF EXISTS lx_faq_group_faq;
DROP TABLE IF EXISTS lx_faq_group; 
DROP TABLE IF EXISTS lx_faq;


CREATE TABLE lx_faq_group (
	id INT(11) NOT NULL AUTO_INCREMENT,
	description VARCHAR(256),
	title VARCHAR(256),
	PRIMARY KEY(id)
);

CREATE TABLE lx_faq (
	id INT(11) NOT NULL AUTO_INCREMENT,
	description VARCHAR(256),
	priority INT(11),
	title VARCHAR(256),
	content TEXT,
	PRIMARY KEY(id)
);

CREATE TABLE lx_faq_group_faq (
	id INT(11) NOT NULL AUTO_INCREMENT,
	faq_group_id INT(11),
	faq_id INT(11),
	CONSTRAINT lx_faq_group_faq_faq_group FOREIGN KEY (faq_group_id) REFERENCES lx_faq_group(id),
	CONSTRAINT lx_faq_group_faq_faq FOREIGN KEY (faq_id) REFERENCES lx_faq(id),
	PRIMARY KEY(id)
);
