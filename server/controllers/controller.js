module.exports = {
    
    search: (req, res) => {
        const db = req.app.get('db')

        const recipes = db.check_recipe([ingredient])
        const myRecipe = recipes.map()
    
        return recipes;
    },
    

    addRecipe: async (req, res) => {
        const db = req.app.get('db')

        await db.add_recipe()
    },

    addIngredient: (req, res) => {
        const db = req.app.get('db')
        const {ingredient} = req.body
        db.add_ingredient([ingredient]).then(ingredients => {
            res.status(200).send(ingredients)
        })
    },

    deleteProduct:(req, res) => {
        const db = req.app.get('db')
        const {id} = req.params
        console.log(id)
        db.delete_product(id).then((ingredients) => {
            res.status(200).send(ingredients)
        })
    },

    getIngredients: async (req, res) => {
        const db = req.app.get('db')
        await db.get_ingredients().then(ingredients =>{
            res.status(200).send(ingredients)
        }).catch(err => res.status(500).send(err))
    },

    editIngredient: (req, res) => {
        const db = req.app.get('db')
        const {ingredient} = req.body
        console.log(req.body)
        const {id} = req.params
     

        db.edit_ingredient([ingredient, id]).then(ingredients => {
            res.status(200).send(ingredients)
        }).catch(err => console.log(err))
    }

}