DROP TABLE IF EXISTS article;
DROP TABLE IF EXISTS topic;

  CREATE TABLE article (
  id INT PRIMARY KEY ,
  title VARCHAR(250) NOT NULL,
  problemDesc VARCHAR(250) NOT NULL,
  solution VARCHAR(250) NOT NULL
);

INSERT INTO article (id,title, problemDesc, solution)VALUES
  (1,'this is a test title for now', 'this is a test problem for now', 'this is a test solution for now'),
  (2,'this is a test title for now', 'this is a test problem for now', 'this is a test solution for now'),
   (3,'this is a test title for now', 'this is a test problem for now', 'this is a test solution for now'),
    (4,'this is a test title for now', 'this is a test problem for now', 'this is a test solution for now'),
     (5,'this is a test title for now', 'this is a test problem for now', 'this is a test solution for now'),
      (6,'this is a test title for now', 'this is a test problem for now', 'this is a test solution for now');

  commit ;

   CREATE TABLE topic (
  id INT AUTO_INCREMENT  PRIMARY KEY,
  article_id INT NOT NULL,
  name VARCHAR(250) NOT NULL,
  title VARCHAR(250) NOT NULL,
  desc VARCHAR(250) NOT NULL,
  publishDate VARCHAR(250) NOT NULL,
   foreign key (article_id) references article(id)
);



INSERT INTO topic (article_id,name, title, desc,publishDate) VALUES
  (1,'Java', 'im topic 1 in java', 'this is just to show des','May 10, 2017'),
(2,'Java', 'im topic 2 in java', 'this is just to show des','May 11, 2017'),
  (3,'Springboot', 'im topic 3 in java', 'this is just to show des','May 12, 2017'),
(4,'Springboot', 'im topic 4 in java', 'this is just to show des','May 13, 2017'),
  (4,'Interviews', 'im topic 5 in java', 'this is just to show des','May 14, 2017'),
(6,'Interviews', 'im topic 6 in java', 'this is just to show des','May 15, 2017');
  commit ;