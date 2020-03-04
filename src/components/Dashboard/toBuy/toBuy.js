import React, { Component } from 'react'
import Dashboard from '../Dashboard'

export default class ToBuy extends Component {
    constructor(props) {
        super(props)

        this.state = {
            userInput: ''
        }
    }

    inputIngredient = (value) => {
        this.setState({
            userInput: value
        })
        console.log(`hit input`)
    }

    render() {

console.log(this.props)

        return (
            <div className='toBuy'>

                <ul>Ingredients To Buy:
                    <div>
                        <input
                            className="toDoAdd"
                            placeholder='Enter Ingredient'
                            value={this.state.userInput}
                            onChange={e => this.inputIngredient(e.target.value)}
                        /><button onClick={() =>{ this.props.addIngredient(this.state.userInput)}}>Add Ingredient</button>
                    </div>
                </ul>
                {this.props.ingredient}
            </div>

        )
    }
}
