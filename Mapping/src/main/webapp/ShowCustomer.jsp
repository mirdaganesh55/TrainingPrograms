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
		<h:form>
      		<center>
        <h2><h:outputText value="Customer Details"/></h2>
		</center>
		
		<center>
		<h:dataTable value="#{customerImpl.showCustomerDetails()}" var="c" border="4">
			
		<h:column>
        <f:facet name="header">
        <h:outputLabel value="CustomerID" />
        </f:facet>
       <h:outputText value="#{c.custId}"/>
		</h:column>
		
		<h:column>
        <f:facet name="header">
        <h:outputLabel value="FisrtName" />
        </f:facet>
       <h:outputText value="#{c.firstName}"/>
		</h:column>
		
		<h:column>
        <f:facet name="header">
        <h:outputLabel value="LastName" />
        </f:facet>
       <h:outputText value="#{c.lastName}"/>
		</h:column>
		
		<h:column>
        <f:facet name="header">
        <h:outputLabel value="Gender" />
        </f:facet>
       <h:outputText value="#{c.gender}"/>
		</h:column>
		
			<h:column>
        <f:facet name="header">
        <h:outputLabel value="Status" />
        </f:facet>
       <h:outputText value="#{c.status}"/>
		</h:column>
		
			<h:column>
        <f:facet name="header">
        <h:outputLabel value="DateOfBirth" />
        </f:facet>
       <h:outputText value="#{c.dateOfBirth}"/>
		</h:column>
		
			<h:column>
        <f:facet name="header">
        <h:outputLabel value="UserName" />
        </f:facet>
       <h:outputText value="#{c.userName}"/>
		</h:column>
		
		<h:column>
        <f:facet name="header">
        <h:outputLabel value="PassCode" />
        </f:facet>
       <h:outputText value="#{c.passCode}"/>
		</h:column>
		
		<h:column>
        <f:facet name="header">
        <h:outputLabel value="EMail" />
        </f:facet>
       <h:outputText value="#{c.email}"/>
		</h:column>
		
		</h:dataTable>
		
		</center>		
		</h:form>
		</body>


</html>


</f:view>






