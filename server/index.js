require("dotenv").config();
const express = require("express"),
    massive = require("massive"),
    session = require("express-session"),
    authCtrl = require("./controllers/authController"),
    ctrl = require('./controllers/controller'),
    //   checkUser = require('./middleware/checkUser'),
    { SERVER_PORT, CONNECTION_STRING, SESSION_SECRET } = process.env;
    ctrlRandom = require(`./controllers/randomRecipes`)

const app = express();

app.use(express.json());

app.use(
    session({
        resave: false,
        saveUninitialized: true,
        rejectUnauthorized: false,
        cookie: { maxAge: 1000 * 60 * 60 * 24 * 7 },
        secret: SESSION_SECRET
    })
);

massive({
    connectionString: CONNECTION_STRING,
    ssl: {
        rejectUnauthorized: false
    }
}).then(db => {
    app.set("db", db)
    console.log("--Database Connected--")
    app.listen(SERVER_PORT, () => console.log(`----Server running on ${SERVER_PORT}----`))
})


// app.get(`/api/check`, authCtrl.checkUser)
app.post(`/api/login`, authCtrl.login)
app.post(`/api/register`, authCtrl.register)
app.post(`/api/logout`, authCtrl.logout)


app.get(`/api/recipes`, ctrl.search)
app.post(`/api/recipes`, ctrl.addRecipe)

app.post(`/api/toBuy`, ctrl.addIngredient)
app.delete(`/api/toBuy/:id`, ctrl.deleteProduct)
app.get(`/api/toBuy`, ctrl.getIngredients)
app.put(`/api/toBuy/:id`, ctrl.editIngredient)

app.get(`/api/random`, ctrlRandom.randomRecipes)

