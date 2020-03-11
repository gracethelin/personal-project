import React, { Component } from 'react'
import axios from 'axios'
import { connect } from "react-redux"
import { toBuy } from '../../redux/toBuyReducer'
import SavedRecipes from './savedRecipes/savedRecipes'

class Dashboard extends Component {
    constructor(props) {
        super(props)

        this.state = {
            search: '',
            listItems: [],
            searchedRecipes: []
        }
    }

    isSearching = (e) => {
        this.setState({
            search: e.target.value
        })}
        componentDidMount(){
        axios.get(`/api/recipesSearch`)
            .then(res => {
                this.setState({
                    listItems: res.data
                })
            }).catch(err =>
                console.log('err', err)
         )
    }

    saveRecipe = (recipe_id) => {
        console.log(`hit save recipe`)
        const { userId } = this.props.user
        console.log(userId)
        console.log(recipe_id)

        axios.post(`/api/saveSearchedRecipe`, {recipe_id, userId}).then(res => {
            console.log(`hit .then in save recipe`)
            this.setState({
                listItems: res.data
            })
        })
    }

    

    render() {
        
        return (
            <div>
                <h1>Dashboard</h1>
                <input
                    className="search"
                    placeholder='Search Recipe'
                    onChange={(e) => this.isSearching(e)}
                />
                <div>
                    {this.state.listItems.filter(e => {
                         console.log(e.recipe_name)
                         return e.recipe_name.toLowerCase().includes(this.state.search.toLowerCase())
                           
                      })
                      .map(e => {
                        return <div className='displayed-recipes'
                        key={e.recipe_id}
                        >     
                             {e.recipe_name}
                             <button onClick={() => this.saveRecipe(e.recipe_id)}>Save</button>
                        </div>   
                        
                    })
                    }

                </div>
             
            
            </div>
        )
    }
}


const mapStateToProps = reduxState => {
    const { user } = reduxState
    return { user }
}


export default connect(mapStateToProps)(Dashboard)