const bcrypt = require("bcryptjs");

module.exports = {
    login: async (req, res) => {
        const db = req.app.get('db')
        const { email, password } = req.body

        let user = await db.check_user(email);
        user = user[0];
        if (!user) {
            return res.status(400).send("Email not found");
        }

        const authenticated = bcrypt.compareSync(password, user.user_password);
        if (authenticated) {
            delete user.user_password;
            req.session.user = user;
            return res.status(202).send(req.session.user);
        } else {
            return res.status(400).send("Incorrect email or password");
        }
    },

    register: async (req, res) => {
        const db = req.app.get('db')
        const { email, password } = req.body

        let user = await db.check_user(email)
        user = user[0]
        if (user) {
            return res.status(400).send('Email already exists')
        }

        const salt = bcrypt.genSaltSync(10);
        const hash = bcrypt.hashSync(password, salt);

        try {
            let newUser = await db.register_user({ hash, email });
            newUser = newUser[0];
            req.session.user = newUser;
            return res.status(201).send(req.session.user);
        } catch (err) {
            return res.sendStatus(500);
        }
    },

    logout: (req, res) => {
        if (req.session) req.session.destroy()
        return res.sendStatus(200)
    }
}