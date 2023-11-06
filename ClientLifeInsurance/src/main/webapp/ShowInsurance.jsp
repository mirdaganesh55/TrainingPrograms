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
		<jsp:include page="Menu.jsp"/>
		<h:form>
      		<center>
        <h2><h:outputText value="Insurance Details"/></h2>
		</center>
		
		<center>
		<h:dataTable value="#{ejbImpl.showInsuranceEjb()}" var="i" border="4">
			
		<h:column>
        <f:facet name="header">
        <h:outputLabel value="InsuranceID" />
        </f:facet>
       <h:outputText value="#{i.insuranceId}"/>
		</h:column>
		
		<h:column>
        <f:facet name="header">
        <h:outputLabel value="Insurance Name" />
        </f:facet>
       <h:outputText value="#{i.insuranceName}"/>
		</h:column>
			
		<h:column>
        <f:facet name="header">
        <h:outputLabel value="Type" />
        </f:facet>
       <h:outputText value="#{i.type}"/>
		</h:column>	
		
		<h:column>
        <f:facet name="header">
        <h:outputLabel value="PremiumStart" />
        </f:facet>
       <h:outputText value="#{i.preminumStart}"/>
		</h:column>
		
		<h:column>
        <f:facet name="header">
        <h:outputLabel value="PremiumEnd" />
        </f:facet>
       <h:outputText value="#{i.preminumEnd}"/>
		</h:column>
		
		<h:column>
        <f:facet name="header">
        <h:outputLabel value="MinPeriod" />
        </f:facet>
       <h:outputText value="#{i.minPeriod}"/>
		</h:column>
			
		<h:column>
        <f:facet name="header">
        <h:outputLabel value="MaxPeriod" />
        </f:facet>
       <h:outputText value="#{i.maxPeriod}"/>
		</h:column>
		
		<h:column>
        <f:facet name="header">
        <h:outputLabel value="LaunchDate" />
        </f:facet>
       <h:outputText value="#{i.lauchDate}"/>
		</h:column>
		
		<h:column>
        <f:facet name="header">
        <h:outputLabel value="Status" />
        </f:facet>
       <h:outputText value="#{i.status}"/>
		</h:column>
		
			<h:column>
			<f:facet name="header">
					<h:outputLabel value="Take Policy" />
			</f:facet>
				<h:commandButton action="#{customerPolicy.redirectToTakePolicy(i.insuranceId)}" value="Take Policy" />
			</h:column>
		
		</h:dataTable>
		
		</center>		
		</h:form>
		</body>


</html>


</f:view>






