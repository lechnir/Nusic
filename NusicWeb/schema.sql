drop table if exists user;
create table user (
  user_id integer primary key autoincrement,
  username text not null,
  email text not null,
  pw_hash text not null
);

drop table if exists follower;
create table follower (
  who_id integer,
  whom_id integer
);

drop table if exists message;
create table message (
  message_id integer primary key autoincrement,
  author_id integer not null,
  text text not null,
  pub_date integer
);

drop table if exists song;
create table song (
  song_id integer primary key autoincrement,
  name text not null,
  artist integer not null
);

drop table if exists post;
create table post (
  post_id integer primary key autoincrement,
  song_id integer not null,
  author_id integer,
  from_id integer
);

drop table if exists link;
create table link (
  link_id integer primary key autoincrement,
  song_id integer not null,
  origin_type integer,
  url text
);

drop table if exists artist;
create table artist (
  artist_id integer primary key autoincrement,
  name text
);