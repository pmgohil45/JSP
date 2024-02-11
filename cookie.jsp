<html>
    <head>
        <title>Setting Cookies</title>
    </head>
   <body>
      
      <form action = "" method = "GET">
         First Name: <input type = "text" name = "first_name">
         <br />
         Last Name: <input type = "text" name = "last_name" />
         <br />
         <input type = "submit" value = "Submit" />
      </form>
    
      <%
        // Create cookies for first and last names.      
        Cookie firstName = new Cookie("first_name", request.getParameter("first_name"));
        Cookie lastName = new Cookie("last_name", request.getParameter("last_name"));
        
        // Set expiry date after 24 Hrs for both the cookies.
        firstName.setMaxAge(60*60*24); 
        lastName.setMaxAge(60*60*24); 
        
        // Add both the cookies in the response header.
        response.addCookie( firstName );
        response.addCookie( lastName );
    %>

    
    <h1>Setting Cookies</h1>
     <ul>
        <li><p><b>First Name:</b>
           <%= request.getParameter("first_name")%>
        </p></li>
        <li><p><b>Last  Name:</b>
           <%= request.getParameter("last_name")%>
        </p></li>
     </ul>
     <a href="read_cookie.jsp">Reading Coockie</a>

   </body>
</html>
