CREATE TABLE recipes (
    recipe_id SERIAL PRIMARY KEY
    recipe_name VARCHAR(250) 
    recipe_ingredients VARCHAR(2000)
    recipe_instruction VARCHAR(2000)
    recipe_img VARCHAR(300)
)

CREATE TABLE toBuy (
    list_id SERIAL PRIMARY KEY,
    list_name VARCHAR(250),
    user_id INT REFERENCES users (user_id)
)

CREATE TABLE savedRecipes(
    FOREIGN KEY recipe_id REFERENCES recipes
    FOREIGN KEY user_id REFERENCES users
)



SELECT * FROM savedRecipes
JOIN recipes ON savedRecipes.recipe_id = recipe_id 
WHERE user_id = $1