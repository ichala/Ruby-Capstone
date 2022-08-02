CREATE database catalog;

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