import axios from 'axios'

const initialState = {
   
    ingredient: ''

}

const TO_BUY = "TO_BUY"

export function toBuy(ingredient){
    console.log(ingredient)
    let action = {
        type: TO_BUY,
        payload: axios.post(`/api/toBuy`)

    }
    return action 
}

export default function toBuyReducer(state = initialState, action){
    const {type, payload} = action
    switch(type){ 
        case TO_BUY:
            console.log(payload.ingredient)
            return {...state, ingredient:payload.ingredient}

          default:

        return state
          
    }
   
}