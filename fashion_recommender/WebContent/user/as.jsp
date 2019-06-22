<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>



<!-- <script src="https://checkout.stripe.com/checkout.jsp">
										
										 
										class="stripe-button"
										data-key="pk_test_6pRNASCoBOKtIshFeQd4XMUh"
										data-amount=" ${sessionScope.grandTotal}" data-name="Stripe.com"
										data-description="Widget"
										data-image="https://stripe.com/img/documentation/checkout/marketplace.png"
										data-locale="auto" data-zip-code="true">
									</script> -->
									
									
									<script src="https://checkout.stripe.com/checkout.js"
										class="stripe-button"
										data-key="pk_test_6pRNASCoBOKtIshFeQd4XMUh"
										data-amount="${sessionScope.grandTotal }" data-name="Stripe.com"
										data-description="Widget"
										data-image="https://stripe.com/img/documentation/checkout/marketplace.png"
										data-locale="auto" data-zip-code="true">
									</script> 

</body>
</html>