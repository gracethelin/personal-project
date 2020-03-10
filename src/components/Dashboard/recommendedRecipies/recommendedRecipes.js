import React, { Component } from 'react'
import axios from 'axios'
import { useState, useEffect } from 'react'
import { connect } from "react-redux";


function RecommendedRecipes(props) {
    const [random, setRandom] = useState([])

    useEffect(() => {
        axios.get(`/api/random`).then((res) => (setRandom(res.data)))
    }, [])

    const saveRecipe = () => {
        const { recipe_id } = random
        const { userId } = props.user
        axios.post(`/api/saveRandomRecipe`, { recipe_id, userId })
       props.history.push("/savedRecipes")
    }
    console.log(props)
    return (

        <div>
            <div>
                <h1>Recipes based on you</h1>
                <p>{random.recipe_name}</p>
                <div>{random.recipe_ingredients}</div>
                <div>{random.recipe_instruction}</div>
                <img src={random.recipe_img} />
                <button onClick={() => saveRecipe()}>Save</button>
            </div>
        </div>
    )

}
const mapStateToProps = reduxState => {
    const { user } = reduxState
    return { user }
};


export default connect(mapStateToProps)(RecommendedRecipes)