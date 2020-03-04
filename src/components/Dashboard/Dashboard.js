import React, { Component } from 'react'
import Header from '../Header/Header'
import axios from 'axios'
import ToBuy from './toBuy/ToBuy'

class Dashboard extends Component {
    constructor(props) {
        super(props)

        this.state = {
            search: '',
            ingredient: ''
        }
    }
  
    addIngredient = (ingredient) => {
        console.log(`hit add`)
        axios.post(`/api/toBuy`, {ingredient}).then(res => {
            this.setState({
                ingredient: res.data
            })
        })
    }

    isSearching = () => {
        axios.get(`api/recipes`).then(
            (res) => {
                this.setState({
                    isSearching: res.data
                })
            }
        )
    }

    render() {
        return (
            <div>Dashboard
              <input
                    className="search"
                    placeholder='Search Recipe'
                    onChange={this.isSearching}
                />
                <ToBuy addIngredient={this.addIngredient}/>
            </div>
        )
    }
}


export default Dashboard