<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<f:view>
    <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
    <center>
        <h:form>
            <h2>
                <h:outputText value="Insurance Management System" />
            </h2>
            <b>
            <h:outputText value="#{loggedUser}" />
            </b>
            <h:commandLink action="ShowInsurance">
                <h:outputLabel value="show Insurance" />
            </h:commandLink>
            <br />
            <h:commandLink action="index">
                <h:outputLabel value="Customer Details" />
            </h:commandLink>
        </h:form>
        </center>
    </body>
    </html>
</f:view>
