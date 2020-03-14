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
        })
    }
    componentDidMount() {
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

        axios.post(`/api/saveSearchedRecipe`, { recipe_id, userId }).then(res => {
            console.log(`hit .then in save recipe`)
            this.setState({
                listItems: res.data
            })
        })
    }

    componentDidUpdate = (oldProps) => {
        console.log(oldProps, this.props)
        console.log('hit component did update')
        console.log()
        if (!this.state.listItems.length) {
            axios.get(`/api/recipesSearch`).then(res => {
                this.setState({
                    listItems: res.data
                })
            }).catch(err =>
                console.log('err', err))
        }
    }

    clearSearch = () => {
        this.setState({
            search: '',
            listItems: [],
            searchedRecipes: []
        })
    }

    render() {
        return (
            <div>
                <h1>Dashboard</h1>
                <input
                    style={{marginRight: 10}}
                    className="search"
                    placeholder='Search Recipe'
                    onChange={(e) => this.isSearching(e)}
                />
                <button className="edit-button" onClick={() => this.clearSearch()}>Clear</button>
                <div>
                    {this.state.listItems.filter(e => {
                        if (e.recipe_name.toLowerCase().includes(this.state.search.toLowerCase())) {
                            return e
                        } else if (e.recipe_ingredients.toLowerCase().includes(this.state.search.toLowerCase())) { return e}
                    }).map(e => {
                        return <div className='displayed-recipes'
                            key={e.recipe_id}>
                            <div className="recipe-header">
                                <h1>{e.recipe_name}</h1>
                                <button className="edit-button" onClick={() => this.saveRecipe(e.recipe_id)}>Save</button>
                            </div>
                            <div className="recipe-info">                                    
                                <h3>Ingredients</h3>
                                {e.recipe_ingredients}
                            </div>                                                
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

