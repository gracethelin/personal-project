import React from 'react'
import Nav from '../Nav/Nav'
import axios from 'axios'
import { useState} from 'react'
import { connect } from "react-redux";

function Header(props) {

    const [email, setEmail] = useState(props.user.email)

    const subscribeButton = () => {
        console.log(email)
        // const { email } = props.user
        console.log(props.user)
        axios.post(`/api/send`, { email }).then((response) => {
            console.log(response)
            alert(response.data)
        }).catch(err => console.log(err))
    }
    return (
        <div className="header">
            <div className="container">
                <div className="header-text">
                    <h1>Grace's Neat Thing</h1>
                    <p>A dorky little app made by a little dork.</p>
                </div>
                <Nav />
                <button onClick={() => subscribeButton()}>Subscribe To Weekly Recipes</button>
            </div>
        </div>
    )
}

const mapStateToProps = reduxState => {
    console.log(reduxState)
    const { user } = reduxState
    return { user }
};


export default connect(mapStateToProps)(Header)
