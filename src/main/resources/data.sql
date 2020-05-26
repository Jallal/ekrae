DROP TABLE IF EXISTS topic;

   CREATE TABLE topic (
  id INT AUTO_INCREMENT  PRIMARY KEY,
  article_Info VARCHAR(250) NOT NULL,
  tag VARCHAR(250) NOT NULL,
  title VARCHAR(250) NOT NULL,
  level VARCHAR(250) NOT NULL,
  desc VARCHAR(1000) NOT NULL,
  publish_time DATE DEFAULT NULL
);

INSERT INTO topic (tag,article_Info,title, level, desc,publish_time) VALUES
  ('interviews','In-place-merge-two-sorted-arrays', 'In Place merge Two sorted arrays','esy' ,'Given two sorted arrays X and Y of size m and n each. Merge element of X and with the elements of Y by maintaining the sorted order. the conversion should be done in place and without using any other data structures.',TO_DATE('10/05/2020','DD/MM/YYYY')),
('java','basicAkkaActors', 'Simple Akka application with Maven and Java 8','esy','Simple Akka application using MAVEN and Java 8. An example on building and/or adding Akka framework to your application. Akka is a very simple and intuitive framework that can be added to any application.',TO_DATE('20/05/2020','DD/MM/YYYY')),
('springboot','producing-soap-web-service', 'Producing a SOAP web service', 'esy', 'You will build a server that exposes data from various European countries by using a WSDL-based SOAP web service.',TO_DATE('25/05/2020','DD/MM/YYYY')),
('springboot','article', 'im topic 4 in Springboot', 'esy', 'this is just to show des',TO_DATE('11/05/2017','DD/MM/YYYY')),
  ('interviews','article', 'im topic 5 in Interviews', 'esy', 'this is just to show des',TO_DATE('11/05/2017','DD/MM/YYYY')),
('interviews','pair-with-given-sum-in-an-array', 'Find a pair with given sum in an array','esy' , 'In this example, let assume you will have two unsorted arrays of integers. Find a pair with a given sum.',TO_DATE('08/05/2020','DD/MM/YYYY'));
commit ;