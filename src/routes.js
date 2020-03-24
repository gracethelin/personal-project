import React from 'react'
import {Switch, Route} from 'react-router-dom'

import Auth from './Components/Auth/Auth'
import Dashboard from './Components/Dashboard/Dashboard'
import SavedRecipes from './Components/Dashboard/SavedRecipes/SavedRecipes'
import RecommendedRecipes from './Components/Dashboard/RecommendedRecipies/RecommendedRecipes'
import ToBuy from './Components/Dashboard/ToBuy/ToBuy'

export default (
    <Switch>
        <Route exact path='/' component={Auth}/>
        <Route path ='/Dashboard' component={Dashboard} />
        <Route path='/SavedRecipes' component={SavedRecipes}/>
        <Route path='/Recommended' component={RecommendedRecipes} />
        <Route path='/ToBuy' component={ToBuy} />
    </Switch>
)