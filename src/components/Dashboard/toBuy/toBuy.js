import React, { Component } from 'react'
import axios from 'axios'
import { connect } from "react-redux"
import { toBuy } from '../../../redux/toBuyReducer'
import Ingre from './Ingre'

class ToBuy extends Component {
    constructor(props) {
        super(props)

        this.state = {
            userInput: '',
            ingredients: [],

        }
    }

    componentDidMount = () => {
        this.getIngredients()
    }

    getIngredients = () => {
        const { userId } = this.props.user
        axios.post(`/api/toBuy`, { userId }).then(res => {
            this.setState({
                ingredients: res.data
            })
        }).catch((error) => console.log(error))
    }

    addIngredient = (ingredient) => {
        const { userId } = this.props.user
        axios.post(`/api/toBuy`, { ingredient, userId }).then(res => {
            this.setState({
                ingredients: res.data
            })
        }).catch(err => console.log(err))
    }

    inputIngredient = (value) => {

        this.setState({
            userInput: value
        })
    }

    cancelChange = () => {
        this.setState({
            userInput: '',
            ingredients: []
        })
    }

    editIngredient = (id, newName) => {
        let index = this.state.ingredients.findIndex((e) => e.list_id === id)
        axios.put(`/api/toBuy/${id}`, {
            ingredient: newName,
            id: id
        }).then(res => {
            console.log(res)
        })
    }


    toggleHandle = () => {
        this.setState({
            isEditing: !this.state.isEditing
        })
    }


    deleteIngredient = (id) => {
        const { userId } = this.props.user
        axios.delete(`/api/toBuy/${id}/${userId}`).then(res => {
            this.setState({
                ingredients: res.data
            })
        })
    }

    render() {
        return (
            <div className='toBuy'>
                <h1>Ingredients to buy</h1>
                <ul>
                    <div>
                        <input
                            className="toDoAdd"
                            placeholder='Enter Ingredient'
                            value={this.state.userInput}
                            onChange={e => this.inputIngredient(e.target.value)}
                        />
                        <button className="toDoButton" onClick={(e) => {
                            e.stopPropagation()
                            this.addIngredient(this.state.userInput)
                        }}><p>+</p></button>
                    </div>
                </ul>
                <ul>
                    {this.state.ingredients.map(e => {

                        return <Ingre
                            key={e.list_id}
                            ingredients={this.state.ingredients}
                            editIngredient={this.editIngredient}
                            e={e}
                            deleteIngredient={this.deleteIngredient}
                            cancelChange={this.cancelChange}

                        />
  

                    })}
                </ul>
            </div>

        )


    }


}

const mapStateToProps = reduxState => {
    const { user } = reduxState
    return { user }
}


export default connect(mapStateToProps, { toBuy })(ToBuy)