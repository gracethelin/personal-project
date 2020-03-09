-- -- -- CREATE TABLE recipes (
-- -- --     recipe_id SERIAL PRIMARY KEY,
-- -- --     recipe_name VARCHAR(250),
-- -- --     recipe_ingredients VARCHAR(2000),
-- -- --     recipe_instruction VARCHAR(2000),
-- -- --     recipe_img VARCHAR(300)
-- -- -- )

-- -- INSERT INTO recipes (recipe_name, recipe_ingredients, recipe_instruction, recipe_img )
-- -- VALUES ('Chocolate Chip Cookies', '1 cup salted butter* softened
-- -- 1 cup white (granulated) sugar,
-- -- 1 cup light brown sugar packed,
-- -- 2 tsp pure vanilla extract,
-- -- 2 large eggs,
-- -- 3 cups all-purpose flour,
-- -- 1 tsp baking soda,
-- -- ½ tsp baking powder,
-- -- 1 tsp sea salt,
-- -- 2 cups chocolate chips (or chunks, or chopped chocolate)' , 'Preheat oven to 375 degrees F. Line a baking pan with parchment paper and set aside.
-- -- In a separate bowl mix flour, baking soda, salt, baking powder. Set aside.
-- -- Cream together butter and sugars until combined.
-- -- Beat in eggs and vanilla until fluffy.
-- -- Mix in the dry ingredients until combined.
-- -- Add 12 oz package of chocolate chips and mix well.
-- -- Roll 2-3 TBS (depending on how large you like your cookies) of dough at a time into balls and place them evenly spaced on your prepared cookie sheets. (alternately, use a small cookie scoop to make your cookies)!
-- -- Bake in preheated oven for approximately 8-10 minutes. Take them out when they are just BARELY starting to turn brown.
-- -- Let them sit on the baking pan for 2 minutes before removing to cooling rack.', 'https://joyfoodsunshine.com/wp-content/uploads/2016/01/best-chocolate-chip-cookies-recipe-ever-no-chilling-3.jpg')

-- INSERT INTO recipes (recipe_name, recipe_ingredients, recipe_instruction, recipe_img )
-- VALUES (
--     'Brownies',
--     '½ cup butter,
-- 1 cup white sugar,
-- 2 eggs,
-- 1 teaspoon vanilla extract,
-- ⅓ cup unsweetened cocoa powder,
-- ½ cup all-purpose flour,
-- ¼ teaspoon salt,
-- ¼ teaspoon baking powder,
-- Frosting:
-- 3 tablespoons butter softened,
-- 3 tablespoons unsweetened cocoa powder,
-- 1 tablespoon honey,
-- 1 teaspoon vanilla extract,
-- 1 cup confectioners sugar',
-- 'https://pizzazzerie.com/wp-content/uploads/2018/07/homemade-brownies-recipe.jpg'
-- )

INSERT INTO recipes (recipe_name, recipe_ingredients, recipe_instruction, recipe_img )
VALUES (
    'Piña Colada Cupcakes',
    '1
box Betty Crocker™ Super Moist™ yellow cake mix,
1/3
cup vegetable oil,
1/4
cup water,
1
teaspoon rum extract,
1
can (8 oz) crushed pineapple in juice- undrained,
3
eggs, 
1
teaspoon coconut extract,
1
teaspoon rum extract,
1
container Betty Crocker™ Whipped vanilla frosting,
3/4
cup shredded coconut',
'1
Heat oven to 375°F (350°F for dark or nonstick pan). Place paper baking cup in each of 24 regular-size muffin cups. In large bowl, beat cake mix, oil, water, 1 teaspoon rum extract, the pineapple and eggs with electric mixer on low speed 30 seconds, then on medium speed 2 minutes, scraping bowl occasionally. Divide batter evenly among muffin cups.
2
Bake 15 to 20 minutes or until toothpick inserted in center comes out clean. Cool in pans 10 minutes; remove from pans to cooling rack. Cool completely, about 30 minutes.
3
Stir coconut extract and 1 teaspoon rum extract into frosting. Spread frosting on cupcakes. Dip tops of frosted cupcakes in coconut. Store loosely covered.',
'https://images-gmi-pmc.edge-generalmills.com/3c0f5eca-4384-41fa-af37-8d6857e9b58c.jpg'
)

INSERT INTO recipes (recipe_name, recipe_ingredients, recipe_instruction, recipe_img )
VALUES ('Chocolate Cupcakes', 
'1 ⅓ cups all-purpose flour,
¼ teaspoon baking soda,
2 teaspoons baking powder,
¾ cup unsweetened cocoa powder,
⅛ teaspoon salt,
3 tablespoons butter softened,
1 ½ cups white sugar,
2 eggs,
¾ teaspoon vanilla extract,
1 cup milk', 

'Preheat oven to 350 degrees F (175 degrees C). Line a muffin pan with paper or foil liners. Sift together the flour, baking powder, baking soda, cocoa and salt. Set aside.

 Step 2
In a large bowl, cream together the butter and sugar until light and fluffy. Add the eggs one at a time, beating well with each addition, then stir in the vanilla. Add the flour mixture alternately with the milk; beat well. Fill the muffin cups 3/4 full.

 Step 3
Bake for 15 to 17 minutes in the preheated oven, or until a toothpick inserted into the cake comes out clean. Frost with your favorite frosting when cool.',
'https://preppykitchen.com/wp-content/uploads/2016/07/Chocolate-cupcakes-Feature.jpg')


INSERT INTO recipes (recipe_name, recipe_ingredients, recipe_instruction, recipe_img )
VALUES ('German Pancakes',
'6 large eggs
1 cup milk
1 cup all-purpose flour
dash salt
1 teaspoon vanilla extract
5 Tablespoons butter', 
'Preheat oven to 425 degrees F. 
As oven preheats, put the butter in an un-greased 9x13-in. baking dish and place in oven, just until melted.  
Place the eggs, milk, flour, salt and vanilla in a blender; cover and process until smooth. Pour batter into baking dish, over melted butter. 
Bake, for 22-27 minutes or until edges are golden brown and puffy.
To serve, sprinkle generously with powdered sugar and syrup. ', 
'https://tastesbetterfromscratch.com/wp-content/uploads/2010/10/German-Pancakes-5.jpg')

INSERT INTO recipes (recipe_name, recipe_ingredients, recipe_instruction, recipe_img )
VALUES ('Crepes', '1 cup all-purpose flour, 2 eggs, 1/2 cup milk, 1/2 cup water, 1/4 teaspoon salt, 2 tablespoons butter melted', 'In a large mixing bowl, whisk together the flour and the eggs. Gradually add in the milk and water, stirring to combine. Add the salt and butter; beat until smooth.
Heat a lightly oiled griddle or frying pan over medium high heat. Pour or scoop the batter onto the griddle, using approximately 1/4 cup for each crepe. Tilt the pan with a circular motion so that the batter coats the surface evenly.
Cook the crepe for about 2 minutes, until the bottom is light brown. Loosen with a spatula, turn and cook the other side. Serve hot.', 'https://littlespicejar.com/wp-content/uploads/2019/05/Easy-Blender-Crepes-11.jpg' )

INSERT INTO recipes (recipe_name, recipe_ingredients, recipe_instruction, recipe_img )
VALUES ('GRILLED CHICKEN', '1/4 cup balsamic vinegar,
Juice of 1 lemon,
2 tablespoons olive oil,
2 tablespoons Dijon mustard,
2 tablespoons brown sugar packed,
1 tablespoon Worcestershire sauce,
2 cloves garlic minced,
1/2 teaspoon dried thyme,
1/2 teaspoon dried oregano,
1/4 teaspoon dried rosemary,
Kosher salt and freshly ground black pepper to taste,
4 boneless skinless chicken breasts,
2 tablespoons chopped fresh parsley leaves', 'In a medium bowl, whisk together balsamic vinegar, lemon juice, olive oil, Dijon, brown sugar, Worcestershire, garlic, thyme, oregano and rosemary; season with salt and pepper, to taste. Reserve 1/4 cup and set aside.
In a gallon size Ziploc bag or large bowl, combine balsamic vinegar mixture and chicken; marinate for at least 1 hour to overnight, turning the bag occasionally. Drain the chicken from the marinade.
Preheat grill to medium high heat. Add chicken to grill and cook, flipping once and basting with reserved 1/4 cup marinade until cooked through, about 5-6 minutes on each side.
Serve immediately, garnished with parsley, if desired.', 'https://s23209.pcdn.co/wp-content/uploads/2015/06/Easy-Grilled-Chicken-1.jpg')

INSERT INTO recipes (recipe_name, recipe_ingredients, recipe_instruction, recipe_img )
VALUES (
'rice crispy treats',
'3 tablespoons butter,
1 package (10 oz., about 40) JET-PUFFED Marshmallows/
4 cups JET-PUFFED Miniature Marshmallows,
6 cups Kelloggs Rice Krispies cereal', '1. In large saucepan melt butter over low heat. Add marshmallows and stir until completely melted. Remove from heat.

2. Add KELLOGGS RICE KRISPIES cereal. Stir until well coated.

3. Using buttered spatula or wax paper evenly press mixture into 13 x 9 x 2-inch pan coated with cooking spray. Cool. Cut into 2-inch squares. Best if served the same day.', 'https://i2.wp.com/www.twosisterscrafting.com/wp-content/uploads/2016/03/best-ever-rice-krispie-treat-recipe-main.jpg')

INSERT INTO recipes (recipe_name, recipe_ingredients, recipe_instruction, recipe_img )
VALUES ('Poppy Seed Chicken', '4 skinless boneless chicken breast halves,  
½ cup butter melted,
1 sleeve buttery round crackers (such as Ritz®)crushed,
1 teaspoon poppy seeds or more if desired,
1 (8 ounce) container sour cream,
1 (10.75 ounce) can condensed cream of chicken soup,
2 cups shredded Cheddar cheese', 'Place the chicken breasts into a large pot and cover with water. Bring to a boil over high heat, then reduce heat to medium, cover, and simmer until the chicken breasts are no longer pink in the center, about 20 minutes. Drain the water, then shred the chicken.

 Step 2
Preheat an oven to 350 degrees F (175 degrees C). Combine the butter, crackers, and poppy seeds in a bowl; set aside.

 Step 3
Blend the sour cream and cream of chicken soup in a bowl; pour half of the soup mixture into a 9x9-inch baking dish. Add the shredded chicken, then pour the remaining half of the soup mixture on top. Sprinkle with Cheddar cheese, then top with the cracker mixture.

 Step 4
Bake in the preheated oven until cheese has melted and the sauce is bubbly, 25 to 30 minutes.', 'https://www.yellowblissroad.com/wp-content/uploads/2019/09/Poppy-Seed-Chicken-17.jpg')

