<%@page import="java.util.*" %> <!-- directives -->
<html>
<head>
    <title>Directives</title>
</head>
<body>
    <!-- declaration -->
    <%!
        Date dt = new Date();
        Date getDate(){
            System.out.println("getDate()");
            return dt;
        }
    %>
    <!-- here we just express date -->
    Date &amp; Time: <%= getDate() %>
</body>
</html>