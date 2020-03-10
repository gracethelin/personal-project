SELECT * FROM savedRecipes
JOIN recipes ON savedRecipes.recipe_id = recipes.recipe_id 
WHERE user_id = $1