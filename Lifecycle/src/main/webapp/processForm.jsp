
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.Arrays" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Process Form</title>
</head>
<body>

    <h2>Form Data Processing</h2>

    <%-- Retrieve form data from request --%>
    <% String textFieldValue = request.getParameter("textfield"); %>
    <% String textAreaValue = request.getParameter("textarea"); %>
    <% String dropdownValue = request.getParameter("dropdown"); %>
    <% String[] checkboxValues = request.getParameterValues("checkbox"); %>
    <% String[] selectboxValues = request.getParameterValues("selectbox"); %>
    <% String radioValue = request.getParameter("radio"); %>
    <% String searchValue = request.getParameter("search"); %>

    <%-- Display form data --%>
    <p><strong>Textfield:</strong> <%= textFieldValue %></p>
    <p><strong>TextArea:</strong> <%= textAreaValue %></p>
    <p><strong>Dropdown:</strong> <%= dropdownValue %></p>
    <p><strong>Checkbox:</strong> <%= Arrays.toString(checkboxValues) %></p>
    <p><strong>SelectBox:</strong> <%= Arrays.toString(selectboxValues) %></p>
    <p><strong>Radio:</strong> <%= radioValue %></p>
    <p><strong>Search:</strong> <%= searchValue %></p>

</body>
</html>
