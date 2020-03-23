require("dotenv").config();
const express = require("express"),
    massive = require("massive"),
    session = require("express-session"),
    authCtrl = require("./controllers/authController"),
    ctrl = require('./controllers/controller'),
    bodyParser = require(`body-parser`),
    exphbs = require(`express-handlebars`),
    nodemailer = require('nodemailer'),
    path = require(`path`),
    ctrlNodeMailer = require(`./controllers/ctrlNodeMailer`),
    
    //   checkUser = require('./middleware/checkUser'),
    { SERVER_PORT, CONNECTION_STRING, SESSION_SECRET } = process.env;
    ctrlRandom = require(`./controllers/randomRecipes`)
 
const app = express();


app.use(express.json());
app.use( express.static( `${__dirname}/../build` ) );

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

app.engine(`handlebars`, exphbs());
app.set(`view Engine`, "handlebars");

app.use(bodyParser.urlencoded({extended: false}))
app.use(bodyParser.json())

app.use(`/public`, express.static(path.join(__dirname, 'public')))

// app.get(`/api/check`, authCtrl.checkUser)
app.post(`/api/login`, authCtrl.login)
app.post(`/api/register`, authCtrl.register)
app.post(`/api/logout`, authCtrl.logout)
app.post(`/api/send`, ctrlNodeMailer.sendEmail)


app.get(`/api/recipesSearch`, ctrl.search)
app.post(`/api/recipes`, ctrl.addRecipe)
app.post(`/api/saveSearchedRecipe`, ctrl.saveSearchedRecipe)


app.post(`/api/toBuy`, ctrl.addIngredient)
app.delete(`/api/toBuy/:id/:userId`, ctrl.deleteProduct)
app.post(`/api/toBuy`, ctrl.getIngredients)
app.put(`/api/toBuy/:id`, ctrl.editIngredient)

app.get(`/api/random`, ctrlRandom.randomRecipes)
app.post(`/api/saveRandomRecipe`, ctrlRandom.saveRandomRecipe)

app.get(`/api/signs3`, ctrl.amazonS3)
app.post(`/api/getAllSavedRecipes`, ctrl.getAllSavedRecipes)
app.delete(`/api/deleteSavedRecipe/:id/:userId`,ctrl.deleteSavedRecipe )

// app.get(`/`, (req, res) => {
// res.send('hello')
// })

// app.post(`/api/send`, (req, res) => {
//     const output = `
//     <p>you have a new contact request</p>
//     <h3>Contact details</h3>
//     <ul>
//     <li>name: ${req.email}</li>
//     </ul>
//     `
    
// })



// async function main() {
//   // Generate test SMTP service account from ethereal.email
//   // Only needed if you don't have a real mail account for testing
//   let testAccount = await nodemailer.createTestAccount();

//   // create reusable transporter object using the default SMTP transport
//   let transporter = nodemailer.createTransport({
//     host: "smtp.ethereal.email",
//     port: 587,
//     secure: false, // true for 465, false for other ports
//     auth: {
//       user: testAccount.user, // generated ethereal user
//       pass: testAccount.pass // generated ethereal password
//     }
//     // ,
//     // tls = {
//     //     rejectUnauthorized: false
//     // }
//   });

//   // send mail with defined transport object
//   let info = await transporter.sendMail({
//     from: '"RECIPES" <foo@example.com>', // sender address
//     to: `${req.session.user}`, // list of receivers
//     subject: "You have now subscribed", // Subject line
//     text: "Hello world?", // plain text body
//     html: "<b>Hello world?</b>" // html body
//   });

//   console.log("Message sent: %s", info.messageId);
//   console.log("Preview URL: %s", nodemailer.getTestMessageUrl(info));

//   res.alert({msg: `Email has been sent`})
// }

// main().catch(console.error);
