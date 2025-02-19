-- Active: 1685454637907@@127.0.0.1@3306
CREATE TABLE users(
  id TEXT PRIMARY KEY UNIQUE NOT NULL,
  name TEXT NOT NULL,
  email TEXT UNIQUE NOT NULL,
  password TEXT NOT NULL,
  role TEXT NOT NULL,
  created_at TEXT DEFAULT (DATETIME()) NOT NULL
);

CREATE TABLE posts(
  id TEXT PRIMARY KEY UNIQUE NOT NULL,
  creator_id TEXT NOT NULL,
  content TEXT NOT NULL,
  likes INTEGER NOT NULL,
  dislikes INTEGER NOT NULL,
  created_at TEXT DEFAULT (DATETIME()) NOT NULL,
  updated_at TEXT DEFAULT (DATETIME()) NOT NULL,
  FOREIGN KEY (creator_id) REFERENCES users (id)
);


CREATE TABLE
    likes_dislikes(
        user_id TEXT NOT NULL,
        post_id TEXT NOT NULL,
        like INTEGER NOT NULL,
        created_at TEXT DEFAULT (DATETIME()) NOT NULL,
        FOREIGN KEY (user_id) REFERENCES users (id),
        FOREIGN KEY (post_id) REFERENCES posts (id)
    );

INSERT INTO posts (id, creator_id, content, likes, dislikes)
VALUES ("Q02", "q001", "abahk", 2000,120);

SELECT * FROM users;
SELECT * FROM posts;