import React, { Component } from 'react'
import axios from 'axios'
import { connect } from "react-redux"
import { toBuy } from '../../redux/toBuyReducer'

class Dashboard extends Component {
    constructor(props) {
        super(props)

        this.state = {
            search: '',
            listItems: []
        }
    }

    isSearching = (e) => {
        
        this.setState({
            search: e.target.value
        })

        axios.get(`/api/recipesSearch`)
            .then(res => {
                console.log('res', res)
                this.setState({
                    listItems: res.data
                })
            }).catch(err =>
                console.log('err', err)
            )
    }

    

    render() {
        console.log(this.state)
        return (
            <div>
                <h1>Dashboard</h1>
                <input
                    className="search"
                    placeholder='Search Recipe'
                    onChange={(e) => this.isSearching(e)}
                />
                <div>
                    
                    {this.state.listItems.map(e => {
                        console.log(e)
                        return <div className='displayed-recipes'>
                             {e.recipe_name}
                             
                        </div>   
                        
                    })}

                </div>
            </div>
        )
    }
}


const mapStateToProps = reduxState => {
    const { ingredient } = reduxState
    return { ingredient }
}


export default connect(mapStateToProps, { toBuy })(Dashboard)