
import React, { Component } from 'react'
import ToBuy from './ToBuy'

export default class Ingre extends Component {
    constructor(props){
        super(props)

        this.state={
            isEditing: false,
            userInput: ''
        }
    }

    componentDidUpdate = (oldProps) => {
        if(oldProps !== this.props){
           
            this.setState({
                userInput: this.state.userInput,
                list_name: this.props.ingredients.list_name,
                list_id: this.props.ingredients.list_id
            })
        }
    }

    toggleHandle = () => {
        this.setState({
            isEditing: !this.state.isEditing
        })
    }


    inputIngredient = (value) => {
        
        this.setState({
            userInput: value
        })
        console.log(`hit input`)
    }
    //   saveIngredient = (product) => [
    //     axios.post('/api/ingre', {product}).then(res => {
    //         this.setState({
    //         })
    //     })
    // ]

   

    render() {

        return this.state.isEditing ?
            (
                <div style={{marginBottom:10}}>
                    <input style={{marginRight: 10}} onChange={e => this.inputIngredient(e.target.value)}
                       placeholder =  {this.props.e.list_name} />
                    <button className="edit-button" onClick={() => { this.props.editIngredient(this.props.e.list_id, this.state.userInput) 
                    this.toggleHandle()
                    }}>Save Ingredient</button>
                    <button className="edit-button" onClick={() => {this.props.cancelChange()}}>Cancel</button>
                    </div>
            ) : (
                <li key={this.props.e.list_id}>
                    <p>{this.props.e.list_name}</p>
                    <div className="button-container">                
                    <button className="edit-button" onClick={this.toggleHandle}>Edit</button>
                    <button className="delete-button"
                        onClick={() => { this.props.deleteIngredient(this.props.e.list_id) }}>Delete</button>
                    </div>
                </li>
            )


    }
}




