import React, { useState, useEffect } from "react";
import { Row, Col, Container } from 'react-bootstrap';
import { useParams } from "react-router-dom";
import { useAppContext } from "../../utils/contextLib";
import FoldersComponent from "../../components/Folders";
import Query from "../../components/Query";
import CUSTOMER_FOLDERS_QUERY from "../../queries/folders/customerfolders";

const Folders = ({ navbarData }) => {  
  const { setNavbarData } = useAppContext();
  var c = useParams();
  const [customerId] = useState(c.customerId != null ? c.customerId : null);
  
  useEffect(() => {
    setNavbarData({
      edit: false,
      selectedId: "",
      page:"folders",
    });
  }, []);	
  
  //manage user login
	var appUser = null;

	if(localStorage.getItem(process.env.REACT_APP_LOCALSTORAGE_APPUSER)){
  	appUser = JSON.parse(localStorage.getItem(process.env.REACT_APP_LOCALSTORAGE_APPUSER));  
	}

	if(appUser){

    return (
      <Container fluid>
          <Row id="row_container">
            <Col id="content-wrapper">
                <br />
                <Query query={CUSTOMER_FOLDERS_QUERY} variables={{ customerId: customerId }} >
                      {({ loading, error, data: { person } }) => {

                        return(
                          <FoldersComponent data={ person } />
                        );
                      }}
                </Query>
            </Col>
          </Row>
      </Container>
    );

	}   

	return (
  	<div>
      	<div className="uk-section">
        		<div className="uk-container uk-container-large">
          		You are not logged in. Logout and log in again.          
        		</div>
      	</div>
    	</div>
  );  


};

export default Folders;