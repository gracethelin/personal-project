module.exports = {
    search: async (req, res) => {
        const db = req.app.get('db')

       const recipes = await db.check_recipe([ingredient])
        const myRecipe = recipes.map()
       },
    

    addRecipe: async (req, res) => {
        const db = req.app.get('db')

        await db.add_recipe()
    },

    addIngredient: async (req, res) => {
        const db = req.app.get('db')
        const {ingredient} = req.body

        db.add_ingredient(ingredient).then(ingredients => {
            res.status(200).send(ingredients)
        })
    }
}