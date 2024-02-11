<%@ page import = "java.io.*,java.util.*" %>

<html>
   <head>
      <title>Page Redirection</title>
   </head>
   
   <body>
        <h1>Page Redirection</h1>
        <form action="" method="get">
            <input type="submit" name="submit" value="Click to Redirect">
        </form>
        <%
            // Check if the form is submitted
            if(request.getMethod().equalsIgnoreCase("get")){
            
                // Check if the button is clicked
                if(request.getParameter("submit") != null){
                    // New location to be redirected
                    String site = new String("https://www.codeimagin.com/");
                    response.setStatus(response.SC_MOVED_TEMPORARILY);
                    response.setHeader("Location", site);
                }else{
                    System.out.println("Not Click");
                }
            }else{
                System.out.println("Error");
            }
        %>
   </body>
</html>