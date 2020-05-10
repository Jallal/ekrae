DROP TABLE IF EXISTS topic;

   CREATE TABLE topic (
  id INT AUTO_INCREMENT  PRIMARY KEY,
  tag VARCHAR(250) NOT NULL,
  title VARCHAR(250) NOT NULL,
  level VARCHAR(250) NOT NULL,
  desc VARCHAR(250) NOT NULL,
  publish_time VARCHAR(250) DEFAULT NULL
);

INSERT INTO topic (tag,title, level, desc,publish_time) VALUES
  ('java', 'im topic 1 in java','esy' ,'this is just to show des','May 10, 2017'),
('java', 'im topic 2 in java', 'esy','this is just to show des','May 11, 2017'),
  ('springboot', 'im topic 3 in Springboot', 'esy', 'this is just to show des','May 12, 2017'),
('springboot', 'im topic 4 in Springboot', 'esy', 'this is just to show des','May 13, 2017'),
  ('interviews', 'im topic 5 in Interviews', 'esy', 'this is just to show des','May 14, 2017'),
('interviews', 'im topic 6 in Interviews', 'esy', 'this is just to show des','May 15, 2017');
commit ;