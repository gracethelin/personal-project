import React, { Component } from 'react'
import { Link } from 'react-router-dom';
import savedRecipes from '../Dashboard/savedRecipes/savedRecipes'

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
                            <Link to='/Dashboard'><button>Home</button></Link>
                            <Link to='/savedRecipes' ><button>My Saved Recipes</button></Link>
                            <Link to='/recommended'><button>Recommended Recipes</button></Link>
                            <Link to='/toBuy'><button>To Buy</button></Link>
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