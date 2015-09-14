CREATE DATABASE meetrsvp;

\c meetrsvp;

CREATE TABLE responses (id SERIAL PRIMARY KEY, name VARCHAR(255),
  company VARCHAR(255), isattending BOOLEAN);
