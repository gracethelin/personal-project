import React, { Component } from 'react'
import axios from 'axios'
import { login, register } from '../../redux/userReducer'
import { connect } from 'react-redux'


class Auth extends Component {
    constructor(props) {
        super(props)

        this.state = {
            email: '',
            password: '',
            // profilePic: ''
        }
    }

    handleChange = (event) => {
        this.setState({
            [event.target.name]: event.target.value
        });
    }

    login = () => {
        console.log('hit login')
        const { email, password } = this.state

        axios.post(`/api/login`, { email, password }).then(res => {
            console.log("hit long pt 2")
            const email = res.data.email
            const userId = res.data.user_id
            // const profilePic  = res.data.profilePic
            this.props.login(
                email, userId,
            )
            this.props.history.push("/Dashboard")
        }).catch(err => alert(err))

    }

    register = () => {
        console.log(`hit register`)
        const { username, password } = this.state
        axios.post(`/api/register`, { username, password }).then((res) => {
            this.props.register(
                res.data
            )
            this.props.history.push("/Dashboard");
        }).catch(err => console.warn(err))
    }

    render() {
        return (
            <div>
                <input className="login"
                    placeholder="Enter Email"
                    name='email'
                    onChange={this.handleChange}

                />
                <input className='login'
                    placeholder='Enter Password'
                    name='password'
                    onChange={this.handleChange}

                />
                <button onClick={this.login}>Login</button>
                <button onClick={this.register}>Register</button>
            </div>
        )
    }
}

export default connect(null, { login, register })(Auth);