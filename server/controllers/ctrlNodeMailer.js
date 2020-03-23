require('dotenv').config()
const nodemailer = require('nodemailer')

const {EMAIL, PASSWORD} = process.env

const sendEmail = (req, res) => {

    const {email} = req.body


    // Step 1
    let transporter = nodemailer.createTransport({
        service: 'gmail',
        auth: {
            user: EMAIL,
            pass: PASSWORD
        }
    })

    let emailText = `Welcome ${email}, you are now Subscribed to get weekly recipes`
    // Step 2
    let mailOptions = {
        from: EMAIL,
        to: email,
        subject: 'You Have Now Subscribed',
        text: emailText
    }

    // Step 3
    transporter.sendMail(mailOptions, (err, data) => {
        if(err){
            console.log(err)
            res.status(400).send('Error')
        } else {
            res.status(200).send('You Got Mail!')
        }
    })
}

module.exports = {
    sendEmail
}
