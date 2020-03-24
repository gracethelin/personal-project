import React, { Component } from 'react';
import { connect } from "react-redux";


import axios from 'axios';
import { v4 as randomString } from 'uuid';
import Dropzone from 'react-dropzone';
import { GridLoader } from 'react-spinners';

class SavedRecipes extends Component {
  constructor() {
    super();
    this.state = {
      isUploading: false,
      url: '',
      savedRecipes: []
    };
  }

  componentDidMount = () => {
    console.log(this.props.user)
    const {userId} = this.props.user
    axios.post(`/api/getAllSavedRecipes`, {userId}).then(res => {
      console.log(res)
      this.setState({
        savedRecipes: res.data
      })
    })}

  
  componentDidUpdate = (oldProps) => {
    const {userId} = this.props.user
    if(!this.state.savedRecipes.length){
    axios.post(`/api/getAllSavedRecipes`, {userId}).then(res => {
      this.setState({
        savedRecipes: res.data
      })
      
    })}
  }

  deleteRecipe = (id) => {
    axios.delete(`/api/deleteSavedRecipe/${id}/${this.props.user.userId}`).then(res => {
      this.setState({
        savedRecipes: res.data
      })
    })
  }

  getSignedRequest = ([file]) => {
    this.setState({ isUploading: true });
 
    const fileName = `${randomString()}-${file.name.replace(/\s/g, '-')}`;
    axios
      .get('/api/signs3', {
        params: {
          'file-name': fileName,
          'file-type': file.type,
        },
      })
      .then(response => {
        const { signedRequest, url } = response.data;
        this.uploadFile(file, signedRequest, url);
      })
      .catch(err => {
        console.log(err);
      });
  };

  uploadFile = (file, signedRequest, url) => {
    const options = {
      headers: {
        'Content-Type': file.type,
      },
    };

    axios
      .put(signedRequest, file, options)
      .then(response => {
        this.setState({ isUploading: false, url });
      })
      .catch(err => {
        this.setState({
          isUploading: false,
        });
        if (err.response.status === 403) {
          alert(
            `Your request for a signed URL failed with a status 403. Double check the CORS configuration and bucket policy in the README. You also will want to double check your AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY in your .env and ensure that they are the same as the ones that you created in the IAM dashboard. You may need to generate new keys\n${
              err.stack
            }`
          );
        } else {
          alert(`ERROR: ${err.status}\n ${err.stack}`);
        }
      });
  };

  render() {
    const { url, isUploading } = this.state;
    return (
      <div className="App">
        {/* <h1>{url}</h1> */}
        <img src={url} alt="" width="450px" />

        <Dropzone
          onDropAccepted={this.getSignedRequest}
          style={{
            position: 'relative',
            width: 100,
            height: 100,
            borderWidth: 1,
            borderColor: '#9C9C9C',
            backgroundColor: '#E8E8E8',
            borderStyle: 'dashed',
            borderRadius: 120,
            display: 'flex',
            justifyContent: 'center',
            alignItems: 'center',
            fontSize: 28,
            cursor: 'pointer'
          }}
          accept="image/*"
          multiple={false}
        >
          {isUploading ? <GridLoader /> : <p style={{fontSize: 16, color: '#9C9C9C', textAlign: 'center'}}>Upload Photo</p>}
        </Dropzone>

        <h1>{this.props.user.email}'s Saved Recipes</h1>
      {this.state.savedRecipes.map(e => {
       return  <div className='displayed-recipes'
       key={e.recipe_id}>
       <div className="recipe-header">
           <h1>{e.recipe_name}</h1>
           <button className="edit-button" onClick={() => this.deleteRecipe(e.recipe_id)}>Delete</button>    
       </div>
       <div className="recipe-info">                                    
           <h3>Ingredients</h3>
           {e.recipe_ingredients}
           <h3>Instructions</h3>
           {e.recipe_instruction}
       </div>                                                
   </div>         
      })}
      </div>
    );
  }
}

const mapStateToProps = reduxState => {

  const {user} = reduxState
  return {user}
};
    
export default connect(mapStateToProps)(SavedRecipes)
