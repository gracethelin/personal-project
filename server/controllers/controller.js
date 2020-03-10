const aws = require('aws-sdk');
const { S3_BUCKET, AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY } = process.env;

module.exports = {

    search: async (req, res) => {
        const db = req.app.get('db')
        const {search} = req.body

        await db.check_recipe([search]).then(recipes => {
            res.status(200).send(recipes)
        }).catch(err => res.status(500).send(err))
    },


    addRecipe: async (req, res) => {
        const db = req.app.get('db')

        await db.add_recipe()
    },

    addIngredient: (req, res) => {
        const db = req.app.get('db')
        const { ingredient } = req.body
        db.add_ingredient([ingredient]).then(ingredients => {
            res.status(200).send(ingredients)
        })
    },

    deleteProduct: (req, res) => {
        const db = req.app.get('db')
        const { id } = req.params
        console.log(id)
        db.delete_product(id).then((ingredients) => {
            res.status(200).send(ingredients)
        })
    },

    getIngredients: async (req, res) => {
        const db = req.app.get('db')
        await db.get_ingredients().then(ingredients => {
            res.status(200).send(ingredients)
        }).catch(err => res.status(500).send(err))
    },

    editIngredient: (req, res) => {
        const db = req.app.get('db')
        const { ingredient } = req.body
        console.log(req.body)
        const { id } = req.params


        db.edit_ingredient([ingredient, id]).then(ingredients => {
            res.status(200).send(ingredients)
        }).catch(err => console.log(err))
    },

    amazonS3: (req, res) => {
        // const db = req.app.get('db')
        // db.update_img()
        aws.config = {
            region: 'us-west-1',
            accessKeyId: AWS_ACCESS_KEY_ID,
            secretAccessKey: AWS_SECRET_ACCESS_KEY,
          };
        
          const s3 = new aws.S3();
          const fileName = req.query['file-name'];
          const fileType = req.query['file-type'];
          const s3Params = {
            Bucket: S3_BUCKET,
            Key: fileName,
            Expires: 60,
            ContentType: fileType,
            ACL: 'public-read',
          };
        
          s3.getSignedUrl('putObject', s3Params, (err, data) => {
            if (err) {
              console.log(err);
              return res.end();
            }
            const returnData = {
              signedRequest: data,
              url: `https://${S3_BUCKET}.s3.amazonaws.com/${fileName}`,
            };
        
            return res.send(returnData);
          });
    },

    getAllSavedRecipes:  async (req, res) => {
        const db = req.app.get('db')
        const {userId} = req.body
        console.log(userId)
        await db.get_join([userId]).then(recipes => {
            res.status(200).send(recipes)
        }).catch(err => console.log(err))
    }
}