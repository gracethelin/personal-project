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

INSERT INTO recipes (recipe_name, recipe_ingredients, recipe_instruction, recipe_img )
VALUES ('Chicken Tikka Masala', '1 1/2 Lbs chicken breast- chopped into bite size pieces
(Marinade),
1 cup plain yoghurt,
2 Tbsp lemon juice,
2 tsp cumin,
2 tsp red pepper,
2 tsp black pepper,
1 tsp cinnamon,
1 tsp salt,
1 tsp ground ginger
(sauce),
1/4 cup cilantro,
1 Tbsp unsalted butter,
2 garlic cloves- minced,
1 jalapeño- minced,
2 tsp ground coriander,
1 tsp cumin,
1 tsp paprika,
1 tsp garam masala,
1/2 tsp salt,
1 can (14.5oz) tomato sauce,
1-2 c heavy whipping cream', 'Cut the chicken into 1 inch cubes., Put the chicken in a dish or large ziploc bag, and add all of the marinade ingredients: yoghurt, lemon juice, cumin, red pepper, black pepper, cinnamon, salt, & ground ginger., Stir to coat the chicken. I probably shouldn’t have taken a close up of that.  Put in the fridge for 1-2 hours then discard the marinade.

Grill or cook the chicken in a high sided skillet about 5 minutes per side, or until no longer pink inside. (If you thread the chicken on skewers and grill it outside it not only tastes better but doesn’t stink out your house). However, there is snow outside my house, so a pan works just fine for me!!, For the sauce
Melt the butter over medium heat. Add garlic and jalapeño and cook for 1 minute. Add coriander, cumin, paprika, garam masala and salt. Stir to combine, Stir in tomato sauce and simmer for 15 minutes until thickened, Add the cooked chicken to the sauce and stir in the cream according to desired heat: 1 cup for hot-medium, 2 cups for medium-mild. Serve with white rice and garnish with fresh cilantro.', 'http://www.mattawamum.com/wp-content/uploads/2012/01/ctm005-800x533.jpg')

INSERT INTO recipes (recipe_name, recipe_ingredients, recipe_instruction, recipe_img )
VALUES ('Steak Tacos', 'For the steak:,
1 1/4 pounds flank steak,
1/4 cup olive oil,
1/3 cup lime juice,
1 teaspoon sugar,
1 teaspoon salt,
1/4 teaspoon ground cumin,
1 teaspoon garlic minced,
1/4 cup water,
1 1/2 teaspoons smoked paprika,
1 teaspoon onion powder,
1 1/2 tablespoons chili powder,

For the tacos:,
8 small corn or flour tortillas warmed,
1 cup avocado diced,
1/4 cup red onion finely diced,
2 tablespoons cilantro minced,
2 teaspoons lime juice,
salt to taste', 'Place the olive oil, lime juice, sugar, salt, cumin, garlic, water, smoked paprika, onion powder and chili powder in a gallon sized resealable bag or large bowl.
Whisk until thoroughly combined.
Add the steak to the marinade. Marinate in the refrigerator at at least one hour, or up to 6 hours.
Preheat an outdoor grill, grill pan, or skillet to medium high heat.
Add the steak and cook for 5-6 minutes per side for medium doneness. Remove from grill and let sit for 5 minutes.
While the steak is cooking, make the avocado topping. Stir together the avocado, red onion, cilantro, lime juice and salt in a small bowl.
Thinly slice the steak against the grain. Divide the meat between the tortillas. Top with avocado mixture and serve.
', 'https://www.dinneratthezoo.com/wp-content/uploads/2019/04/steak-tacos-5.jpg.webp')

INSERT INTO recipes (recipe_name, recipe_ingredients, recipe_instruction, recipe_img )
VALUES ('Spinach Dip', '8 ounces cream cheese softened,
1 cup sour cream,
10 ounces fresh spinach leaves,
1 teaspoon minced garlic,
1/2 teaspoon salt,
1/4 teaspoon pepper,
1/2 cup grated parmesan cheese,
1 1/2 cups shredded mozzarella cheese divided use,
1 tablespoon chopped parsley,
bread, crackers and vegetables for serving', 'Steam or saute the spinach until wilted. Let cool, then wring out all the excess water. Coarsely chop the spinach.
Preheat the oven to 375 degrees F. Coat a small baking dish or skillet with cooking spray.
Place the cream cheese, sour cream, cooked spinach, garlic, salt, pepper, parmesan cheese and 3/4 cup of the mozzarella cheese in a bowl. Stir until well combined.
Spread the spinach mixture into the prepared dish. Top with remaining mozzarella cheese.
Bake for 20 minutes or until dip is bubbly and cheese is melted. Turn the oven to broil and cook for 2-3 more minutes or until cheese starts to brown. 
Sprinkle with chopped parsley then serve with bread, crackers and vegetables.', 'https://www.dontsweattherecipe.com/wp-content/uploads/2018/09/Homemade-Spinach-Dip-04.jpg')

INSERT INTO recipes (recipe_name, recipe_ingredients, recipe_instruction, recipe_img )
VALUES ('Vegan Tacos', 'For the lentils:

1 1/2 cups green lentils,
2 tablespoons olive oil,
1 teaspoon cumin,
1 teaspoon garlic powder,
3/4 teaspoon kosher salt,
Fresh ground pepper

For the tacos:

8 One Degree sprouted organic corn tortillas,
2 green onions,
1/2 small green cabbage,
Salsa verde (purchased or homemade),
Creamy Cilantro Sauce, to serve,
Avocado or pickled jalapenos, optional','Soak the cashews for the Creamy Cilantro Sauce for at least 30 minutes while making the remainder of the recipe (for a high speed blender), or soak them overnight or the morning of if you think of it. The longer the better! (You also can make the sauce ahead — see instructions in the cilantro sauce recipe!).
Place the lentils in a pot with 6 cups warm water. Bring to a low boil, then boil for about 15 to 20 minutes until just al dente (taste often to assess doneness). Drain, then stir in the olive oil, cumin, garlic powder, and kosher salt.
Thinly slice the green onions. Thinly slice the cabbage. If using, chop the avocado.
Meanwhile, make the Creamy Cilantro Sauce.
Warm the tortillas according to the package instructions*. (We typically char ours on an open flame, but that’s not the preferred method with the One Degree tortillas.) To serve, top the tortillas with lentils, green onions, green cabbage, salsa verde, torn cilantro leaves, and cilantro drizzle.', 'https://www.acouplecooks.com/wp-content/uploads/2018/02/Verde-Vegan-Lentil-Tacos-007.jpg')


INSERT INTO recipes (recipe_name, recipe_ingredients, recipe_instruction, recipe_img )
VALUES ('Beet Hummus', '3 cups cooked chickpeas (approx. 1½ cups dry), 
250 g / ½ lb beetroot,
1-2 garlic cloves adjust to your preference,
90 ml / ¼ cup + 2 tbsp quality tahini (I used hulled),
1¼ tsp salt- more to taste,
1 tsp cumin (optional)
about 180 ml / ¾ cup fridge-cold aquafaba,
4-5 tbsp lemon juice,
fresh parsley to garnish (optional),
black and white sesame seeds to garnish (optional),
extra virgin olive oil- to garnish (optional)', 'To cook your beetroots, you could bake, steam or boil them. I baked mine. To bake your beetroots, heat up the oven to 200° C / 390° F. Place washed beetroots in the middle of a large piece of kitchen foil. Holding the edges of the foil up with one hand, drizzle a bit of water to the bottom of the parcel so that the beetroots cook in their own steam. Scrunch the edges of the foil above the beetroots to create a parcel. Bake until you can easily pierce each beetroot with a knife (about 60 min, depending on the beetroot’s size). Once the beetroots are cool enough to handle, peel the skin off.
Pour cold aquafaba and lemon juice to the bottom of the blender (or a food processor, but blender will give you a smoother hummus) with all the tahini, roughly sliced beetroots and chickpeas.
Process until smooth. If the mixture is a bit too thick, trickle more aquafaba (or cold water) through the opening in the lid. Once the mixture becomes homogeneous and thick and your average blender starts to struggle (if you have a Vitamix or a similar hi-tech blender you probably will not need to worry about this) start making circles on the surface of your hummus mixture (in the direction of the turning blades) with a spatula (don’t dip the spatula in too deep as you don’t want to accidentally touch the turning blades). This simple action will prevent air pockets forming under the mixture’s surface, helping your blender process the heavy mixture.
Finally, season the mixture with salt, cumin, garlic and extra lemon juice if you like.
To serve, put hummus in a bowl. Drizzle with extra virgin olive oil (if you don’t care about it being oil-free), sprinkle some sesame seeds and chopped parsley on top.', 'https://cdn77-s3.lazycatkitchen.com/wp-content/uploads/2016/10/vegan-beet-hummus-lunch-800x1200.jpg')

INSERT INTO recipes (recipe_name, recipe_ingredients, recipe_instruction, recipe_img )
VALUES ('Homemade Bread', '1 package (1/4 ounce) active dry yeast,
2-1/4 cups warm water (110° to 115°),
3 tablespoons sugar plus 1/2 teaspoon sugar,
1 tablespoon salt,
2 tablespoons canola oil,
6-1/4 to 6-3/4 cups bread flour', 'In a large bowl, dissolve yeast and 1/2 teaspoon sugar in warm water; let stand until bubbles form on surface. Whisk together remaining 3 tablespoons sugar, salt, and 3 cups flour. Stir oil into yeast mixture; pour into flour mixture and beat until smooth. Stir in enough remaining flour, 1/2 cup at a time, to form a soft dough.
Turn onto a floured surface; knead until smooth and elastic, 8-10 minutes. Place in a greased bowl, turning once to grease the top. Cover and let rise in a warm place until doubled, 1-1/2 to 2 hours.
Punch dough down. Turn onto a lightly floured surface; divide dough in half. Shape each into a loaf. Place in 2 greased 9x5-in. loaf pans. Cover and let rise until doubled, 1 to 1-1/2 hours.
Bake at 375° until golden brown and bread sounds hollow when tapped or has reached an internal temperature of 200°, 30-35 minutes. Remove from pans to wire racks to cool.', 'https://thestayathomechef.com/wp-content/uploads/2019/10/Homemade-Bread-4.jpg')