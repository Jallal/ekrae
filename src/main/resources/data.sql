DROP TABLE IF EXISTS topic;

   CREATE TABLE topic (
  id INT AUTO_INCREMENT  PRIMARY KEY,
  article_Info VARCHAR(250) NOT NULL,
  tag VARCHAR(250) NOT NULL,
  title VARCHAR(250) NOT NULL,
  level VARCHAR(250) NOT NULL,
  desc VARCHAR(250) NOT NULL,
  publish_time VARCHAR(250) DEFAULT NULL
);

INSERT INTO topic (tag,article_Info,title, level, desc,publish_time) VALUES
  ('Interviews Questions','article', 'In Place merge Two sorted arrays','esy' ,'Given two sorted arrays X and Y of size m and n each. Merge element of X and with the elements of Y by maintaining the sorted order. the conversion should be done in place and without using any other data structures.','May 10, 2017'),
('Java','article', 'im topic 2 in java', 'esy','this is just to show des','May 11, 2017'),
  ('Springboot','article', 'im topic 3 in Springboot', 'esy', 'this is just to show des','May 12, 2017'),
('Springboot','article', 'im topic 4 in Springboot', 'esy', 'this is just to show des','May 13, 2017'),
  ('Interviews Questions','article', 'im topic 5 in Interviews', 'esy', 'this is just to show des','May 14, 2017'),
('Interviews Questions','article', 'im topic 6 in Interviews', 'esy', 'this is just to show des','May 15, 2017');
commit ;