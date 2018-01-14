CREATE TABLE posts (
    id SERIAL PRIMARY KEY,
    title VARCHAR(20),
    content VARCHAR(5000),
    description VARCHAR(100),
    age int
);