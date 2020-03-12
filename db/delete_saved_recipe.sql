DELETE FROM savedRecipes WHERE recipe_id = $1 AND user_id = $2;

SELECT * FROM savedRecipes sr JOIN recipes r ON r.recipe_id = sr.recipe_id WHERE user_id = $2