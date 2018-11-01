<%-- 
    Document   : new_category
    Created on : Oct 19, 2018, 10:47:53 PM
    Author     : halimmah
--%>

<link href="/WEB-INF/stylesheets/jumbotron.css" rel="stylesheet">
<%@include file= "/layouts/header.jsp" %>

<div class="jumbotron">
</div>

<main role="main" >
   
    <div class="container">
        <h1>Add Category</h1>
        <br>
  <h4><c:out value='${message}' /></h4>
  <form action="/kamumau/categories?action=create" method="post"> 
  <%@include file= "form.html" %>
  </form>
  
    </div>
  <br>
     <!-- /container -->
</main>
    <hr>
    <center><%@include file= "/layouts/footer.html" %></center>