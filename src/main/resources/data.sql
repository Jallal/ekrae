DROP TABLE IF EXISTS USERS;
DROP TABLE IF EXISTS VEHICLES;

CREATE TABLE topics (
  id INT AUTO_INCREMENT  PRIMARY KEY,
  name VARCHAR(250) NOT NULL,
  title VARCHAR(250) NOT NULL,
  desc VARCHAR(250) NOT NULL,
  publishDate VARCHAR(250) NOT NULL
);

INSERT INTO topic (name, title, desc,publishDate) VALUES
  ('Java', 'im topic 1 in java', 'this is just to show des','May 10, 2017'),
('Java', 'im topic 2 in java', 'this is just to show des','May 11, 2017'),
  ('Springboot', 'im topic 3 in java', 'this is just to show des','May 12, 2017'),
('Springboot', 'im topic 4 in java', 'this is just to show des','May 13, 2017'),
  ('Interviews', 'im topic 5 in java', 'this is just to show des','May 14, 2017'),
('Interviews', 'im topic 6 in java', 'this is just to show des','May 15, 2017');


  CREATE TABLE article (
  id INT AUTO_INCREMENT  PRIMARY KEY,
  price VARCHAR(250) NOT NULL,
  status VARCHAR(250) NOT NULL,
  year VARCHAR(250) NOT NULL,
  maker VARCHAR(250) NOT NULL,
    color VARCHAR(250) NOT NULL,
  model VARCHAR(250) NOT NULL,
  image VARCHAR(250) DEFAULT NULL,
  millage VARCHAR(250) DEFAULT NULL
);

INSERT INTO article (maker, model, year,color, millage, status,price)VALUES
  ('GMC', 'SILVERADO', '2018','Blue','108000','New','18000'),
  ('BUICK', 'COLORADO', '2018','Blue','108000','New','18000'),
  ('CADILLAC', 'MICHIGAN', '2018','Blue','108000','New','18000'),
  ('chevrolet', 'IMPALA', '2018','Blue','108000','New','18000'),
   ('chevrolet', 'CRUZE', '2018','Blue','108000','New','18000'),
     ('GMC', 'YUKON', '2018','Blue','108000','New','18000'),
   ('chevrolet', 'SILVERADO 1500', '2018','Blue','108000','New','18000'),
    ('chevrolet', 'MALIBU', '2018','Blue','108000','New','18000'),
     ('chevrolet', 'EQUINOX', '2018','Blue','108000','New','18000'),
      ('chevrolet', 'CRUZE', '2018','Blue','108000','New','18000'),
      ('BUICK', 'ENCLAVE', '2018','Blue','108000','New','18000'),
  ('GMC', 'TEXAS', '2018','Blue','108000','New','18000');

  commit ;