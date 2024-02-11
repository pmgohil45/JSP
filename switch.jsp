<html>
<head>
    <title>Coditional Statements</title>
</head>
<body>
    <form action="" method="post">
        <label>Select a Country:</label><br>
        <input type="radio" name="country" value="india"> India<br>
        <input type="radio" name="country" value="delhi"> Delhi<br>
        <input type="submit" value="Check">
    </form>
    <%
        // Process form submission
        if (request.getMethod().equalsIgnoreCase("post")) {
            String selectedCountry = request.getParameter("country");

            // Use a switch statement to check the selected country
            try{
            switch(selectedCountry) {
                case "india":
    %>
                    <p>India is a Country.</p>
    <%
                    break;
                case "delhi":
    %>
                    <p>Delhi is a capital for India.</p>
    <%
                    break;
                default:
    %>
                    <p>Please Select anyone!!</p>
    <%
            }}catch(Exception e){
                out.println("The Exception is: " + e);
            }
        }
    %>

</body>
</html>