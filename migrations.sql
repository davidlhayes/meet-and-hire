CREATE DATABASE weddingrsvp;

\c weddingrsvp;

CREATE TABLE responses (id SERIAL PRIMARY KEY, name VARCHAR(255),
  hasplusone BOOLEAN, isattending BOOLEAN);
  
