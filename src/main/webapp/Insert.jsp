<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
  
  <!-- Setting character encoding and viewport -->
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Insert Your Payment Details</title>
    
    <!-- Linking external CSS file -->
    <link rel="stylesheet" href="CSS/insert.css" />
  </head>
  <body>
   <!-- Heading for the form -->
    <h1>Insert Your Payment Details</h1>
  <!-- Div container for the form -->
    <div class="container">
  <!-- Div for the right half of the form -->
    <div class="right-half">
  <!-- Form for collecting payment details -->
    <form action="insert" method="post">
  <!-- Label and input for collecting Name -->
      <label for="username">Name</label>
      <input type="text" id="name" name="name" required /><br /><br />
      
 <!-- Label and input for collecting Email -->
      <label for="email">Email</label>
      <input type="email" id="email" name="email" required /><br /><br />

<!-- Label and input for collecting Phone Number with a specific pattern -->
      <label>Phone Number</label>
      <input type="text" id="phone" name="phone"  pattern="[0-9]{10}" required /><br /><br />

<!-- Label and dropdown for selecting Section -->
      <label f>Section</label>
      <select id="section" name="section" required>
        <option value="Channeling payment">Channeling payment</option>
        <option value="Insurance payment">Insurance payment</option>
        <option value="Health advice payment ">Health advice payment</option></select><br /><br />

 <!-- Label and dropdown for selecting Payment Method -->
      <label>Payment Method</label>
      <select id="method" name="method" required>
        <option value="Card Payment">Card Payment</option>
        <option value="Paypal">Paypal</option>
        <option value="Apple Pay">Apple Pay</option></select
      ><br /><br />

<!-- Label and input for collecting Payment Amount -->
      <label>Payment Amount</label>
      <input type="text" id="amount" name="amount" required /><br /><br />
      
 <!-- Div for styling the submit button -->  
    <div class="btncls">
      <button type="submit">Submit</button>
    </div>
    </form>
  </div>
</div>
  </body>
</html>
