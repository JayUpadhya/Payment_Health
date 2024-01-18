 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>

 <!-- Setting character encoding and title for the page -->
	<meta charset="ISO-8859-1">
	<title>Delete Your Payment Details</title>
	
<!-- Linking external CSS file for styling -->
	<link href="CSS/delete.css" rel="stylesheet">
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

 
  
    
    <h1>Payment Details Delete Confirmation</h1>
       <div class="container">
    <div class="right-half">
        <form  action="delete" method="post">
        
            <label for="username">ID</label>
            <input type="text" id="id" name="id" required value="<%= id %>" readonly /><br><br>
          
            <label for="username">Name</label>
            <input type="text" id="name" name="name" required  value="<%= name %> "readonly/><br><br>
          
            <label for="email">Email</label>
            <input type="email" id="email" name="email" required value="<%= email %>"readonly /><br><br>
          
            <label >Phone Number</label>
            <input type="text" id="phone" name="phone" required  value="<%= phone %>"readonly/><br><br>
         
                 <label f>Section</label>
                 <select id="section" name="section"  value="<%= section %>" readonly readonly>
                 <option value="Channeling payment">Channeling payment</option>
                <option value="Insurance payment">Insurance payment</option>
                <option value="Health advice payment">Health advice payment</option>
               </select><br><br>
               
                   <label >Payment Method</label>
                 <select id="method" name="method" required  value="<%= method %>" readonly>
                 <option value="Card Payment">Card Payment</option>
                <option value="Paypal">Paypal</option>
                <option value="Apple Pay">Apple Pay</option>
               </select><br><br>
            
            <label >Payment Amount</label>
            <input type="text" id="amount" name="amount"    value="<%= amount %>"  readonly/><br><br>
          
    <div class="btncls">
      <button type="submit">Delete</button>
    </div>
        </form>
        </div>
        </div>

</body>
</html>