
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Form Example</title>
</head>
<body>

<center>

    <h2>Form Example</h2>

    <form action="processForm.jsp" method="post">

        <label for="textfield">Textfield:</label>
        <input type="text" id="textfield" name="textfield" required><br>

        <!-- TextArea -->
        <label for="textarea">TextArea:</label>
        <textarea id="textarea" name="textarea" rows="4" cols="20" required></textarea><br>

        <!-- Dropdown -->
        <label for="dropdown">Dropdown:</label>
        <select id="dropdown" name="dropdown">
            <option value="Apple">Apple</option>
            <option value="Banana">Banana</option>
            <option value="Grapes">Grapes</option>
        </select><br>

        <!-- Checkbox -->
        <label>Checkbox:</label>
<input type="checkbox" id="checkbox1" name="Java" value="Java">
<label for="Java">Java</label>

<input type="checkbox" id="checkbox2" name="Python" value="Python">
<label for="Python">Python</label><br>


        <!-- SelectBox -->
        <label for="selectbox">SelectBox:</label>
        <select id="selectbox" name="selectbox" multiple>
            <option value="Mercedes">Mercedes</option>
            <option value="Rolls-Royce">Rolls-Royce</option>
            <option value="Lamborghini">Lamborghini</option>
        </select><br>

        <!-- RadioButton -->
       <label>Radio Buttons:</label><br>
<input type="radio" id="radio1" name="radio" value="Outlook">
<label for="radio1">Outlook</label>

<input type="radio" id="radio2" name="radio" value="Microsoft">
<label for="radio2">Microsoft</label><br>


        <!-- Search Input -->
        <label for="search">Search:</label>
        <input type="search" id="search" name="search"><br>

        <!-- Submit Button -->
        <input type="submit" value="Submit">

    </form>
    </center>

</body>
</html>
