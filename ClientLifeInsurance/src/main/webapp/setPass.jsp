<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<f:view>
	<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
</head>
<body>
	<h2>
		<h:outputText value="Validate Otp" />
	</h2>
	<h:form id="form">
	
		<h:outputText value="Otp " />
		<h:inputText id="otp" value="#{customerAuth.otp}" />
		<br />
	
		<h:outputText value="UserName " />
		<h:inputText id="uname" value="#{customer.userName}" />
		<br />

		<h:outputText value="Password " />
		<h:inputText id="pass" value="#{customer.passCode}" />
		<br />

		
		<br />
		<br />
		<h:commandButton action="#{customerImpl.setPassword(customer,customerAuth)}"
			value="Submit" />
		<br />
	

	</h:form>
</body>
	</html>
</f:view>