<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Save Customer </title>
<link type="text/css" rel="stylesheet"
		href="${pageContext.request.contextPath }/resources/css/style.css" />
<link type="text/css" rel="stylesheet"
		href="${pageContext.request.contextPath }/resources/css/add-customer-style.css" />
</head>
<body>
	<div id="wrapper">
		<div id="header">
			<h3>CRM - Customer Relationship Manager</h3>
		</div>
	</div>
	<div id="container">
		<h2>Save Customer</h2>
		<form:form action="saveCustomer" modelAttribute="customer" method="POST">
		<!-- need to associate this data with customer id -->
		<form:button path="id"></form:button>
			<table>
				<tbody>
					<tr>
						<td><label>First Name:</label></td>
						<td><form:input path="firstName"/></td>
					</tr>
					<tr>
						<td><label>Last Name:</label></td>
						<td><form:input path="lastName"/></td>
					</tr>
					<tr>
						<td><label>Email:</label></td>
						<td><form:input path="email"/></td>
					</tr>
					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Save" class="save"/></td>
					</tr>
				</tbody>
			</table>
		</form:form>
		<div style="clear; both;" >
		<p>
			<a href="${pageContext.request.contextPath }/customer/list">Back to List</a>
		</p>
		</div>
		
	</div>
</body>
</html>