<%@ page import = "java.io.*,java.util.*" %>
<html>
   
   <head>
      <title>Auto Refresh</title>
   </head>
   
   <body>
        <h2>Auto Refresh Header</h2>
         <%
            // Set refresh, autoload time as 2 seconds
            response.setIntHeader("Refresh", 2);
            
            // Get current time
            Calendar calendar = new GregorianCalendar();
            
            String am_pm;
            int hour = calendar.get(Calendar.HOUR);
            int minute = calendar.get(Calendar.MINUTE);
            int second = calendar.get(Calendar.SECOND);
            
            if(calendar.get(Calendar.AM_PM) == 0) 
               am_pm = "AM";
            else
               am_pm = "PM";
               String CT = hour+":"+ minute +":"+ second +" "+ am_pm;
               out.println("Current Time is: " + CT + "\n");
         %>
   </body>
</html>