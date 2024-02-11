<%@ page import = "java.io.*,java.util.*" %>
<html>
   <head>
      <title>Form</title>
   </head>

   <body>
    <form action="" method="get">
        <input type = "checkbox" value="India" name="country" checked = "checked" />IN
        <input type = "checkbox" value="Unitad State" name="country" />US
        <input type = "checkbox" value="United Kingdom" name="country" />UK
        <input type = "submit" value = "Select Country" />
     </form>
     <center>
        <h2>HTTP Header Request Example</h2>
        <table width = "100%" border = "1" align = "center">
           <tr bgcolor = "#949494">
              <th>Param Name</th>
              <th>Param Value</th>
           </tr>
           <%
            Enumeration paramNames = request.getParameterNames();
            while (paramNames.hasMoreElements()) {
                String paramName = (String) paramNames.nextElement();
                String[] paramValues = request.getParameterValues(paramName);

                for (String paramValue : paramValues) {
                    out.print("<tr><td>" + paramName + "</td>");
                    out.println("<td>" + paramValue + "</td></tr>");
                }
            }
            %>
        </table>
     </center>
   </body>
</html>