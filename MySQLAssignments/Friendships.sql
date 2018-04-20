
INSERT INTO users (first_name, last_name) VALUES ('Chris', 'Baker');
INSERT INTO users (first_name, last_name) VALUES ('Diana', 'Smith');
INSERT INTO users (first_name, last_name) VALUES ('Jessica','Davidson');
INSERT INTO users (first_name, last_name) VALUES ('James', 'Johnson');

SELECT * FROM friendships;

INSERT INTO friendships (user_id, friend_id) 
VALUES (1, 3);

INSERT INTO friendships (user_id, friend_id) 
VALUES (1, 4);

INSERT INTO friendships (user_id, friend_id) 
VALUES (1, 2);

INSERT INTO friendships (user_id, friend_id) 
VALUES (2, 1);

INSERT INTO friendships (user_id, friend_id) 
VALUES (4, 1);

INSERT INTO friendships (user_id, friend_id) 
VALUES (3, 1);

SELECT users.first_name, users.last_name, user2.first_name as friend_first_name, user2.last_name as friend_last_name FROM users 
LEFT JOIN friendships ON users.id = friendships.user_id
LEFT JOIN users as user2 ON user2.id=friendships.friend_id;


