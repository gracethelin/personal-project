CREATE TABLE recipes (
    recipe_id SERIAL PRIMARY KEY
    recipe_name VARCHAR(250) 
    recipe_img VARCHAR(300)
)

CREATE TABLE toBuy (
    list_id SERIAL PRIMARY KEY 
    list_name VARCHAR(250)
    FOREIGN KEY user_id REFERENCES users
)

CREATE TABLE toBuy (
    list_id SERIAL PRIMARY KEY,
    list_name VARCHAR(250),
    user_id INT REFERENCES users (user_id)
)

CREATE TABLE ingredients(
    ingredient_id SERIAL PRIMARY KEY
    ingredient_name VARCHAR(200)
)

CREATE TABLE rec_ing(
    FOREIGN KEY recipe_id REFERENCES recipes
    FOREIGN KEY ingredient_id REFERENCES ingredients
)