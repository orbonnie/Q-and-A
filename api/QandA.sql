CREATE DATABASE QandA;

--\c into QandA

CREATE TABLE question (
  product_id int not null,
  question_id int generated always as identity,
  body text unique not null,
  username varchar(60) not null,
  email varchar(60) not null,
  date timestamp not null,
  helpfulness int,
  reported boolean not null,
  answers json,
  primary key(question_id)
);

CREATE TABLE answer (
  question_id int not null,
  answer_id int generated always as identity,
  body text unique not null,
  username varchar(60) not null,
  email varchar(60) not null,
  date timestamp not null,
  helpfulness int,
  reported boolean not null,
  photos: text [],
  primary key(answer_id),
  foreign key(question_id) references question(question_id)
);
