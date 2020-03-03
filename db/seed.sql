CREATE TABLE recipies (
    recipie_id SERIAL PRIMARY KEY
    recipie_name VARCHAR(250)
    ingredient VARCHAR(300)
    recipie_img VARCHAR(300)
)

CREATE TABLE toBuy (
    list_id SERIAL PRIMARY KEY 
    list_name VARCHAR(250)
    FOREIGN KEY user_id REFERENCES users
)

CREATE TABLE users(
    user_id SERIAL PRIMARY KEY
    user_email VARCHAR(250)
    user_password VARCHAR(250)
    profile_pic VARCHAR(300)
)