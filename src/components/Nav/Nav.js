import React, { Component } from 'react'
import { Link } from 'react-router-dom';
import savedRecipes from '../Dashboard/savedRecipes/savedRecipes'

class Nav extends Component {
    constructor(props) {
        super(props)

        this.state = {
            dropdown: false
        }
    }

    handleClick = () => {
        this.setState({
            dropdown: !this.state.dropdown
        })
    }

    render() {
        return (
            <div>
                <img 
                className='dropdownImage'
                src='https://cdn.dribbble.com/users/146798/screenshots/6218681/doughnut-dribbble1_4x.jpg' onClick={this.handleClick} />

                {this.state.dropdown ?
                    (
                        <div>
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