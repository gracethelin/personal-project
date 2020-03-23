import React from 'react'
import {Switch, Route} from 'react-router-dom'

import Auth from './components/Auth/Auth'
import Dashboard from './components/Dashboard/Dashboard'
import SavedRecipes from './components/Dashboard/savedRecipes/SavedRecipes'
import RecommendedRecipes from './components/Dashboard/recommendedRecipies/RecommendedRecipes'
import ToBuy from './components/Dashboard/toBuy/ToBuy'

export default (
    <Switch>
        <Route exact path='/' component={Auth}/>
        <Route path ='/Dashboard' component={Dashboard} />
        <Route path='/savedRecipes' component={SavedRecipes}/>
        <Route path='/recommended' component={RecommendedRecipes} />
        <Route path='/toBuy' component={ToBuy} />
    </Switch>
)