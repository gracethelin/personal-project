import React, { Component } from 'react'
import axios from 'axios'
import Dashboard from '../Dashboard'
import { connect } from "react-redux"
import { toBuy } from '../../../redux/toBuyReducer'

class ToBuy extends Component {
    constructor(props) {
        super(props)

        this.state = {
            userInput: '',
            ingredients: [],
            isEditing: false
        }
    }

    componentDidMount = () => {
        this.getIngredients()
    }

    getIngredients = () => {
        axios.get(`/api/toBuy`).then(res => {
            this.setState({
                ingredients: res.data
            })
        }).catch((error) => console.log(error))
    }

    addIngredient = (ingredient) => {
        console.log(`hit add`)
        axios.post(`/api/toBuy`, { ingredient }).then(res => {
            console.log('mehh')
            this.setState({
                ingredients: res.data
            })
        }).catch(err => console.log(err))
    }

    inputIngredient = (value) => {
        this.setState({
            userInput: value
        })
        console.log(`hit input`)
    }


    editIngredient = (id) => {
console.log(this.state.ingredients[0].list_id, id)

        let index = this.state.ingredients.findIndex((e) => e.list_id === id)
        console.log(index)
        axios.put(`/api/toBuy/${id}`, {
            ingredient: this.state.ingredients[index].list_name,
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
        console.log('hit delete')
        axios.delete(`/api/toBuy/${id}`).then(res => {
            this.setState({
                ingredients: res.data
            })
        })
    }

    render() {

        console.log(this.state)

        return (
            <div className='toBuy'>

                <ul>Ingredients To Buy:
                    <div>
                        <input
                            className="toDoAdd"
                            placeholder='Enter Ingredient'
                            value={this.state.userInput}
                            onChange={e => this.inputIngredient(e.target.value)}
                        /><button onClick={() => { this.addIngredient(this.state.userInput) }}>Add Ingredient</button>
                    </div>
                </ul>
                <ul>
                    {this.state.ingredients.map(e => {
                        return <li key={e.list_id}>
                            {e.list_name}
                            <button
                                onClick={() => { this.deleteIngredient(e.list_id) }}>Delete</button>
                            <button onClick={() => { this.editIngredient(e.list_id) }}>Edit</button>
                        </li>
                    })}
                </ul>
            </div>

        )


    }


}

const mapStateToProps = reduxState => {
    const { ingredient } = reduxState
    return { ingredient }
}


export default connect(mapStateToProps, { toBuy })(ToBuy)