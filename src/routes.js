import React from 'react'
import {Switch, Route} from 'react-router-dom'

import Auth from './Components/Auth/Auth'
import Dashboard from './Components/Dashboard/Dashboard'
import SavedRecipes from './Components/Dashboard/savedRecipes/savedRecipes'
import RecommendedRecipes from './Components/Dashboard/recommendedRecipies/RecommendedRecipes'
import ToBuy from './Components/Dashboard/toBuy/ToBuy'

export default (
    <Switch>
        <Route exact path='/' component={Auth}/>
        <Route path ='/Dashboard' component={Dashboard} />
        <Route path='/savedRecipes' component={SavedRecipes}/>
        <Route path='/recommended' component={RecommendedRecipes} />
        <Route path='/toBuy' component={ToBuy} />
    </Switch>
)