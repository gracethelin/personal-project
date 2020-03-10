CREATE TABLE recipes (
    recipe_id SERIAL PRIMARY KEY
    recipe_name VARCHAR(250) 
    recipe_ingredients VARCHAR(2000)
    recipe_instruction VARCHAR(2000)
    recipe_img VARCHAR(300)
)

CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    user_email VARCHAR(250),
    user_password VARCHAR(250),
    profile_pic VARCHAR(400)
)

CREATE TABLE toBuy (
    list_id SERIAL PRIMARY KEY,
    list_name VARCHAR(250),
    user_id INT REFERENCES users (user_id)
)

CREATE TABLE savedRecipes(
    recipe_id INT REFERENCES recipes(recipe_id),
     user_id INT REFERENCES users(user_id)
)



