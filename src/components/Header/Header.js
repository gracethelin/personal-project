import React from 'react'
import Nav from '../Nav/Nav'

export default function Header() {
    return (
        <div className="header">
            <div className="container">
                <div className="header-text">
                <h1>Grace's Neat Thing</h1>
                <p>A dorky little app made by a little dork.</p>
                </div>
                <Nav />
            </div>
        </div>
    )
}
