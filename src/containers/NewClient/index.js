import React, { useState } from "react";
import { Row, Col, Container } from 'react-bootstrap';
import SideBar from "../../components/Bootstrap/SideBar";
import NewCustomer from "../../components/NewCustomer";

const NewClient = () => {  
  var customerModel = useState({});
  var errorModel = useState({});

  function save(){    
    console.log("SAVE");
    console.log(customerModel);
    console.log("SAVE");

    /*  name:"",
        surname:"",
        code:"",
        province:"",
        cap:"",
        country:"",
        mobile:"",
        phone:"",
        fax:"",
        mail:"",
        pec:"",
        street:"",
        number:"",
        city:"" 
    */

    /*
      var customer = {
        customer_name: customerModel.name,
      }

      if(customerModel.type === "pp"){
        customer_customer:{

        }
      } else if(customerModel.type === "lp"){
        
      }

      axios.post(`${process.env.REACT_APP_BACKEND_URL}/clients`, customer)
          .then(response => console.log(response));
    */          
  };

  const [sidebarData, setSidebarData] = useState({
    saveFunction: save
  });	
  
  //manage user login
	var appUser = null;

	if(localStorage.getItem(process.env.REACT_APP_LOCALSTORAGE_APPUSER)){
  	appUser = JSON.parse(localStorage.getItem(process.env.REACT_APP_LOCALSTORAGE_APPUSER));  
	}

	if(appUser){

    	return (
      	<Container fluid>
        		<Row id="row_container">
          		<SideBar page="newcustomer" sidebarData={ sidebarData }/>

          		<Col id="content-wrapper">
	             		<br />
             			<NewCustomer setSidebarData={setSidebarData} 
                               customerModel={customerModel}
                               errorModel={errorModel} />
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

export default NewClient;