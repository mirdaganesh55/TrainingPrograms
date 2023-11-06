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
    		
    		<h:dataTable value="#{paginationDao.getCustomerList()}" var="i" border="3">
    		
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
					<h:outputLabel value="Show Plans" />
			</f:facet>
				<h:commandButton action="#{planImpl.redirectToInsurancePlan(i.insuranceId)}" value="Show Plans" />
			</h:column>
    		
    		
    		
    		
    		
    		</h:dataTable>
    		<h:commandButton value="first" action="#{paginationDao.pageFirst}"
                             disabled="#{paginationDao.firstRow == 0}" />
            <h:commandButton value="prev" action="#{paginationDao.pagePrevious}"
                             disabled="#{paginationDao.firstRow == 0}" />
            <h:outputText value="&nbsp;" escape="false"/>
            <h:commandButton value="next" action="#{paginationDao.pageNext}"
                             disabled="#{paginationDao.firstRow + paginationDao.rowsPerPage >= paginationDao.totalRows}" />
            <h:outputText value="&nbsp;" escape="false"/>
            <h:commandButton value="last" action="#{paginationDao.pageLast}"
                             disabled="#{paginationDao.firstRow + paginationDao.rowsPerPage >= paginationDao.totalRows}" />
            <h:outputText value="&nbsp;" escape="false"/>
            <h:outputText value="Page #{paginationDao.currentPage} / #{paginationDao.totalPages}" />
            <br />
            <!-- Set rows per page -->
            <h:outputLabel for="rowsPerPage" value="Rows per page" />
            <h:inputText id="rowsPerPage" value="#{paginationDao.rowsPerPage}" size="3" maxlength="3" />
            <h:commandButton value="Set" action="#{paginationDao.pageFirst}" />
            <h:message for="rowsPerPage" errorStyle="color: red;" />
    		
    		
    	</h:form>
    </body>

</html>

</f:view>