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

	<center>

	<h2>
		<h:outputText value="Make Policy" />
	</h2>
	<h:form id="form">
	
		<h:outputText value="Cust Id " />
		<h:inputText id="fname" value="#{loggedCustId}" />
		<br />

		<h:outputText value="Insurance Id " />
		<h:inputText id="lname" value="#{insuranceId}" />
		<br />
		
		<h:outputText value="Insurance Amount " />
		<h:inputText id="uname" value="#{policy.insuranceAmount}" />
		<br />
		
		<h:outputText value="PayMode " />
		<h:selectOneMenu value="#{policy.payMode}">
			<f:selectItem itemValue="MONTHLY" itemLabel="MONTHLY" />
			<f:selectItem itemValue="QUARTERLY" itemLabel="QUARTERLY" />
			<f:selectItem itemValue="HALFYEARLY" itemLabel="HALFYEARLY" />
			<f:selectItem itemValue="YEARLY" itemLabel="YEARLY" />
		</h:selectOneMenu>
		<br/><br/>
		uuuuuu
		<h:commandButton action="#{customerPolicy.takePolicy(policy)}"
			value="Submit" />
	</h:form>
	</center>
</body>
	</html>

</f:view>