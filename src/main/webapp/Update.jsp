<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<!DOCTYPE html>
<html lang="en">
  <head>
  
   <!-- Setting character encoding and title for the page -->
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Update Your Payment Details</title>
    
    <!-- Linking external CSS file for styling -->
    
    <link rel="stylesheet"  href="CSS/insert.css"  />
  </head>
  <body>
  
  <%-- Retrieving parameters from the request --%>
  
  <%
    String id = request.getParameter("id");
    String name = request.getParameter("name");
	String email = request.getParameter("email");  
	String phone = request.getParameter("phone");
	String section = request.getParameter("section");
	String method = request.getParameter("method");
	String amount = request.getParameter("amount");
%>

 
  
    
    <h1>Update Your Payment Details</h1>
        <div class="container">
    <div class="right-half">
        <form  action="update" method="post">
        
            <label for="username">ID</label>
            <input type="text" id="id" name="id" required value="<%= id %>" readonly /><br><br>
          
            <label for="username">Name</label>
            <input type="text" id="name" name="name" required  value="<%= name %>"/><br><br>
          
            <label for="email">Email</label>
            <input type="email" id="email" name="email" required value="<%= email %>" /><br><br>
          
            <label >Phone Number</label>
            <input type="text" id="phone" name="phone"  pattern="[0-9]{10}" required  value="<%= phone %>"/><br><br>
         
                 <label f>Section</label>
                 <select id="section" name="section"  value="<%= section %>" required>
                 <option value="Channeling payment">Channeling payment</option>
                <option value="Insurance payment">Insurance payment</option>
                <option value="Health advice payment">Health advice payment</option>
               </select><br><br>
               
                   <label >Payment Method</label>
                 <select id="method" name="method" required  value="<%= method %>">
                 <option value="Card Payment">Card Payment</option>
                <option value="Paypal">Paypal</option>
                <option value="Apple Pay">Apple Pay</option>
               </select><br><br>
            
            <label >Payment Amount</label>
            <input type="text" id="amount" name="amount"    value="<%= amount %>" required /><br><br>
          
            
            
            
       <div class="btncls">
      <button type="submit">Submit</button>
    </div>
        </form>
     
    
    </div>
    </div>
  </body>
</html>
