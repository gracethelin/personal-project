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





INSERT INTO recipes (recipe_name, recipe_ingredients, recipe_instruction, recipe_img )
VALUES ('Funneral potatoes', '30 ounces frozen hash browns -diced or shredded will work- THAWED,
2 cups sour cream,
10.5 ounce can cream of chicken soup (or homemade),
10 Tablespoons butter -divided- melted,
1 teaspoon salt,
1/4 teaspoon freshly ground black pepper,
1 teaspoon dried minced onion,
2 cups shredded cheddar cheese,
2 cups corn flakes cerea', 
'Allow potatoes to thaw in your fridge overnight, or spread them on a baking sheet and warm them in the oven at 200 degrees for about 20 minutes, until thawed.
Preheat oven to 350 degrees F.
Combine sour cream, cream of chicken soup, 6 Tablespoons of melted butter, salt, pepper and dried onion in a bowl. Mix well. 
Add potatoes and shredded cheese and stir to combine. Spoon mixture into a single layer in a 9x13'' pan.
Add cornflakes to a large ziplock bag and crush gently with your hands or a rolling pin. 
Add remaining 4 tablespoons of melted butter to the crushed cornflakes and combine well. Sprinkle mixture over potatoes. 
Bake uncovered at 350 F for 40-50 minutes.
Serve these with baked ham, oven roasted turkey, or flank steak.', 'https://tastesbetterfromscratch.com/wp-content/uploads/2016/12/Funeral-Potatoes-5-400x400.jpg')

INSERT INTO recipes (recipe_name, recipe_ingredients, recipe_instruction, recipe_img )
VALUES ('Muddy Buddys', '9 cups rice chex cereal,
1/2 cup creamy peanut butter,
1 cup milk or semisweet chocolate chips (I like Guittard or Ghirardelli),
4 tablespoons unsalted butter,
1 teaspoon vanilla extract,
1/2 teaspoon fine sea salt,
1 and 1/2 cups powdered sugar', 'Into a large bowl, measure cereal; set aside.
In a large microwave safe bowl, combine the peanut butter, chocolate chips, and butter. Microwave in bursts of 15 seconds, stirring in between each burst for 15 seconds until the mixture is melted and smooth. Add in the vanilla and salt. Pour over the prepared cereal. Stir well until the cereal is evenly coated.
Pour half of the cereal mixture into a gallon sized ziplock bag and pour half of the powdered sugar over it. Seal and shake until the cereal is evenly coated. Repeat with the other half of the cereal and powdered sugar in the same or a different bag. Shake until all the cereal is well coated!
Remove into a large bowl and enjoy! If desired stir in a fun addition such as mini M&Ms or mini chocolate chips. 
Store leftover muddy buddies in an airtight container at room temperature.', 'https://www.chelseasmessyapron.com/wp-content/uploads/2014/04/Muddy-Buddies-2.jpg.webp')

INSERT INTO recipes (recipe_name, recipe_ingredients, recipe_instruction, recipe_img )
VALUES ('Classic Chili', '1 tablespoon olive oil,
1 medium yellow onion -diced,
1 pound 90% lean ground beef,
2 1/2 tablespoons chili powder,
2 tablespoons ground cumin,
2 tablespoons granulated sugar,
2 tablespoons tomato paste,
1 tablespoon garlic powder,
1 1/2 teaspoons salt,
1/2 teaspoon ground black pepper,
1/4 teaspoon ground cayenne pepper -optional,
1 1/2 cups beef broth,
1 (15 oz.) can petite diced tomatoes,
1 (16 oz.) can red kidney beans, drained and rinsed,
1 (8 oz.) can tomato sauce', 'Add the olive oil to a large soup pot and place it over medium-high heat for two minutes. Add the onion. Cook for 5 minutes, stirring occasionally.
Add the ground beef to the pot. Break it apart with a wooden spoon. Cook for 6-7 minutes, until the beef is browned, stirring occasionally.
Add the chili powder, cumin, sugar, tomato paste, garlic powder, salt, pepper, and optional cayenne. Stir until well combined.
Add the broth, diced tomatoes (with their juice), drained beans, and tomato sauce. Stir well.
Bring the liquid to a low boil. Then, reduce the heat (low to medium-low) to gently simmer the chili, uncovered, for 20-25 minutes, stirring occasionally.
Remove the pot from the heat. Let the chili rest for 5-10 minutes before serving', 'https://www.thewholesomedish.com/wp-content/uploads/2018/05/600-X-900.jpg')

INSERT INTO recipes (recipe_name, recipe_ingredients, recipe_instruction, recipe_img )
VALUES ('Deviled Eggs', '6 large eggs,
3 tbsp mayonnaise,
1 tsp Dijon mustard,
1 tsp apple cider vinegar,
salt and pepper- to taste,
paprika- for garnish', 'Bring a pot of water to a boil. Reduce the heat to low (or off) to ensure the water is no longer boiling or has bubbles and use a skimmer to place the eggs in the water. Then increase the heat back to high and set a timer for 14 minutes.
While the eggs are boiling prepare an ice water bath and set aside.
After 14 minutes, remove the eggs from the water and place in the ice water bath.
Once the eggs have cooled completely, peel them and slice in half lengthwise. Remove the yolk to a small bowl with a spoon and place the egg whites on a plate.
Mash the yolks with a fork and add the mayonnaise, mustard, vinegar, salt and pepper. Stir everything together.
Use a spoon to add a portion of the deviled egg mixture back into the hole of each egg white. Sprinkle on paprika for garnish.', 'https://i2.wp.com/www.downshiftology.com/wp-content/uploads/2018/09/Deviled-Eggs-2-1.jpg')