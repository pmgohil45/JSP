<html>
<head>
    <title>Coditional Statements</title>
</head>
<body>
    <form action="" method="post">
        <label>Select a Country:</label><br>
        <input type="radio" name="country" value="india"> India<br>
        <input type="radio" name="country" value="other"> Delhi<br>
        <input type="submit" value="Check">
    </form>
    <%
        // Process form submission
        if (request.getMethod().equalsIgnoreCase("post")) {
            String selectedCountry = request.getParameter("country");

            // Check if the selected country is India
            if (selectedCountry != null && selectedCountry.equals("india")) {
    %>
                <p>India is a Country.</p>
    <%
            } else if(selectedCountry != null) {
    %>
                <p>Delhi is a capital for India.</p>
    <%
            }else{
    %>
                <p>Please Select anyone!!</p>
    <%   
            }
        }
    %>
</body>
</html> 