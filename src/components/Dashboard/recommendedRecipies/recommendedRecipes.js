import React, { Component } from 'react'
import axios from 'axios'
import {useState, useEffect} from 'react'

  function RecommendedRecipes(props){
    const [random, setRandom] = useState([])

    useEffect(() => {
        axios.get(`/api/random`).then((res) => (setRandom(res.data)))
    }, [])

    return (
        <div>
            <h1>Recipes based on you</h1>
        </div>
    )

}

export default RecommendedRecipes