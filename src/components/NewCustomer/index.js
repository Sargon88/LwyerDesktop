import React, { useState } from "react";
import { Row, Col, Form } from 'react-bootstrap';
import CustomerType from "./CustomerType";

const NewCustomer = ({ setSidebarData, customerModel, errorModel, validateRules, customerId }) => {
	const [customerType, setCustomerType] = useState(null);

	function selectCustomerType(event){
		setCustomerType(event.target.value)
	}

	return (
		<>
		<Row>
			<Col><h3>Nuovo Cliente</h3></Col>
		</Row>
		<Row>
			<Col xs={3}>
				<Form>
					<Form.Group controlId="newCustomer">
						<Form.Label>Tipo Cliente</Form.Label>
						<Form.Control as="select" onChange={ selectCustomerType } disabled={ customerType != null }>
							<option value=""></option>
							<option value="pp">Persona Fisica</option>
							<option value="lp">Persona Giuridica</option>
						</Form.Control>
					</Form.Group>
				</Form>
			</Col>  
		</Row>
		<Row>
			<Col>
				<CustomerType type={customerType} 
					setSidebarData={setSidebarData}
					customerModel={customerModel}
					errorModel={errorModel}
					validateRules={validateRules}
					/>
			</Col>
		</Row>
		</>
	);

	
};

export default NewCustomer;