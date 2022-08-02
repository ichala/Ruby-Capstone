CREATE DATABASE catalog;

CREATE TABLE item (
    id  INT GENERATED ALWAYS AS IDENTITY,
    genre_id INT,
    author_id INT,
    label_id INT,
    publish_date DATE,
    archived BOOLEAN,
    PRIMARY KEY(id),
    FOREIGN KEY (genre_id) REFERENCES genres (id),
    FOREIGN KEY (author_id) REFERENCES authors (id),
    FOREIGN KEY (label_id) REFERENCES labels (id)
);

CREATE TABLE labels (
    id  INT GENERATED ALWAYS AS IDENTITY,
    title VARCHAR(100),
    color VARCHAR(100),
    PRIMARY KEY(id)
);
CREATE table games (
  id serial primary key,
  published_date date,
  multiplayer varchar(255),
  last_played_at date
);

CREATE table authors (
  id serial primary key,
  first_name varchar(255),
    last_name varchar(255),
    items int
    CONSTRAINT fk_items FOREIGN KEY (items) REFERENCES items (id)
);

CREATE TABLE books (
    id  INT,
    title VARCHAR(100),
    publisher VARCHAR(100),
    cover_state VARCHAR(100),
    FOREIGN KEY(id) REFERENCES item(id)
);


