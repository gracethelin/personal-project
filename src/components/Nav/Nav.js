import React, { Component } from 'react'
import { Link } from 'react-router-dom';
import SavedRecipes from '../Dashboard/SavedRecipes/SavedRecipes'

class Nav extends Component {
    constructor(props) {
        super(props)

        this.state = {
            dropdown: true
        }
    }

    handleClick = () => {
        this.setState({
            dropdown: !this.state.dropdown
        })
    }

    render() {
        return (
            <div className="menu-container">
                <button className="edit-button" id="menu-button" onClick={this.handleClick}>Toggle Menu</button>
                {this.state.dropdown ?
                    (
                        <div className="nav-links">
                            <Link to='/Dashboard'><button onClick={(e) => {
                                e.preventDefault()
                                e.stopPropagation()
                            }}>Home</button></Link>
                            <Link to='/SavedRecipes'><button onClick={(e) => {
                                e.preventDefault()
                                e.stopPropagation()
                            }}>My Saved Recipes</button></Link>
                            <Link to='/recommended'><button onClick={(e) => {
                                e.preventDefault()
                                e.stopPropagation()
                            }}>Recommended Recipes</button></Link>
                            <Link to='/toBuy'><button onClick={(e) => {
                                e.preventDefault()
                                e.stopPropagation()
                            }}>To Buy</button></Link>
                            <Link to='/'><button>Logout</button></Link>
                        </div>
                    ) : (
                        null
                    )}
            </div>
        )
    }
}


export default Nav