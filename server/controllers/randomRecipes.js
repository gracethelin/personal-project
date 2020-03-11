module.exports = {

    randomRecipes: async (req, res) => {
        const db = req.app.get('db')
        const random = await db.check_recipe()
        const index = Math.floor(Math.random() * 17)
        
        res.status(200).send(random[index])

    },

    saveRandomRecipe:  async (req, res) => {
        const db = req.app.get('db')
        const {recipe_id, userId} = req.body
        console.log(recipe_id, userId)
        await db.add_recipe([recipe_id, userId]).then(result => {
            res.status(200).send(result)
        })
    }
}