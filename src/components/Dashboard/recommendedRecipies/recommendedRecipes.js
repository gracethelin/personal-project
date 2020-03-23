import React, { Component } from './node_modules/react'
import axios from './node_modules/axios'
import { useState, useEffect } from './node_modules/react'
import { connect } from "./node_modules/react-redux";


function RecommendedRecipes(props) {
    
    const [random, setRandom] = useState([])

    useEffect(() => {
        axios.get(`/api/random`).then((res) => (setRandom(res.data)))
    }, [])

    const saveRecipe = () => {
        const { recipe_id } = random
        const { userId } = props.user
        console.log(props.user)
        axios.post(`/api/saveRandomRecipe`, { recipe_id, userId })
       props.history.push("/savedRecipes")
    }
    console.log(props)
    return (

        <div>
            <div>
                <h1>Recipes based on you</h1>
                <div className='displayed-recipes'
                        key={random.recipe_id}>
                        <div className="recipe-header">
                            <h1>{random.recipe_name}</h1>
                            <button className="edit-button" onClick={() => saveRecipe(random.recipe_id)}>Save</button>
                        </div>
                        <div className="recipe-info">                                    
                            <h3>Ingredients</h3>
                            {random.recipe_ingredients}
                        </div>                                                
                    </div>  
            </div>
        </div>
    )

}
const mapStateToProps = reduxState => {
    const { user } = reduxState
    return { user }
};


export default connect(mapStateToProps)(RecommendedRecipes)