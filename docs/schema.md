# Schema Information

## posts
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
owner_id    | integer   | not null, foreign key (references users)
score_id    | integer   | not null, foreign key (references score)
location    | string    | not null
food_id     | integer   | not null, foreign key (references food type)
price       | float     | not null
num_meals   | integer   |
image_url   | string    |
description | string    |

## score
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
description | string    | not null

## friends
column name | data type | details
------------|-----------|-----------------------
user_id          | integer   | not null, foreign key (references users)
friend_id   | integer   | not null, foreign key (references users)

## food types
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
title       | string    | not null

## users
column name     | data type | details
----------------|-----------|-----------------------
id              | integer   | not null, primary key
email           | string    | not null, unique
first_name      | string    | not null
last_name       | string    | not null
password_digest | string    | not null
session_token   | string    | not null, unique

## comments
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
post_id     | integer   | not null, foreign key (references posts)
owner_id    | integer   | not null, foreign key (references users)
content     | string    | not null

## likes
column name | data type | details
------------|-----------|-----------------------
id          | integer   | not null, primary key
post_id     | integer   | not null, foreign key (references posts)
owner_id    | integer   | not null, foreign key (references users)
