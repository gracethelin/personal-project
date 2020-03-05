import React, { Component } from 'react'
import Header from '../Header/Header'
import axios from 'axios'
import ToBuy from './toBuy/ToBuy'
import {connect} from "react-redux"
import {toBuy} from '../../redux/toBuyReducer'

class Dashboard extends Component {
    constructor(props) {
        super(props)

        this.state = {
            search: '',
            
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


const mapStateToProps = reduxState => {
    const {ingredient} = reduxState
    return {ingredient}
    }
    
    
    export default connect(mapStateToProps, {toBuy})(Dashboard)