<html>
<head>
    <title>Loop Statements</title>
</head>
<body>
    <%! int font_size; %>
    <!--for loop-->
    <% for(font_size=1; font_size<=6; font_size++){ %>
        <font color="red" size="<%= font_size %>">For Loop</font><br/>
    <% } %>
    <br/>
    <!--while loop-->
    <%
    font_size=1;
    while(font_size<=6){ %>
        <font color="green" size="<%= font_size %>">While Loop</font><br/>
    <% 
        font_size++; 
    } %>
</body>
</html>