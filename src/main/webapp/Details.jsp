<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
  <head>
  
  <!-- Setting character encoding and viewport -->
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Your Payment Details</title>
    
  <!-- Linking external CSS file for styling -->
    <link rel="stylesheet" href="CSS/display.css" />
  </head>
  <body>

<!-- Heading for the page -->
<h1>Your Payment Details</h1>

<!-- Looping through the 'cusDetails' using JSTL forEach -->
	<c:forEach var="cus" items="${cusDetails}">
	
 <!-- Setting values in variables from the 'cus' object -->	
	<c:set var="id" value="${ cus.id}" />
	<c:set var="name" value="${ cus.name}" />
	<c:set var="email" value="${ cus.email}" />
	<c:set var="phone" value="${ cus.phone}" />
	<c:set var="section" value="${ cus.section}" />
	<c:set var="method" value="${ cus.method}" />
	<c:set var="amount" value="${ cus.amount}" />
	
	<!-- Div container for the form -->
	      <div class="container">
        <div class="right-half">
   <!-- Form for displaying payment details -->
	
	<!-- Label and input for displaying Id -->
        <label for="username">Id</label>
        <input type="text" value="${cus.id}" readonly /><br /><br />

   <!-- Label and input for displaying Name -->
        <label for="username">Name</label>
        <input type="text" value="${cus.name}" readonly /><br /><br />

  <!-- Label and input for displaying Email -->
        <label for="email">Email</label>
        <input type="email" value="${cus.email}" readonly /><br /><br />

 <!-- Label and input for displaying Phone Number -->
        <label>Phone Number</label>
        <input type="text" value="${cus.phone}" readonly /><br /><br />

<!-- Label and input for displaying Section -->
        <label f>Section</label>
        <input type="text" value="${cus.section}" readonly /><br /><br />

 <!-- Label and input for displaying Payment Method -->
        <label>Payment Method</label>
        <input type="text" value="${cus.method}" readonly /><br /><br />

 <!-- Label and input for displaying Payment Amount -->
        <label>Payment Amount</label>
        <input type="text" value="${cus.amount}" readonly /><br /><br />
	
	

	</c:forEach>
	
<!-- Creating URL for updating the data -->
	<c:url value="Update.jsp" var="cusupdate">
	
	<c:param name="id" value="${id}"/>
	<c:param name="name" value="${name}"/>
	<c:param name="email" value="${email}"/>
	<c:param name="phone" value="${phone}"/>
	<c:param name="section" value="${section}"/>
	<c:param name="method" value="${method}"/>
	<c:param name="amount" value="${amount}"/>
	
	 </c:url>
	 
	 <!-- Creating URL for deleting the data --> 
	 <c:url value="Delete.jsp" var="cusdelete">
	 
<c:param name="id" value="${id}"/>
	<c:param name="name" value="${name}"/>
	<c:param name="email" value="${email}"/>
	<c:param name="phone" value="${phone}"/>
	<c:param name="section" value="${section}"/>
	<c:param name="method" value="${method}"/>
	<c:param name="amount" value="${amount}"/>

	 </c:url>
	 <!-- Div for styling the update and delete buttons --> 
	 <div class="btncls">
	          <a href="${cusupdate }"><button name="update" >Update</button></a>
               <a href="${cusdelete }"><button name="delete" class="dkt">Delete</button></a>
               </div>
        </div>
      </div>

    
    
  </body>
</html>

