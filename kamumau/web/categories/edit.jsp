<%-- 
    Document   : edit_category
    Created on : Oct 19, 2018, 11:10:13 PM
    Author     : halimmah
--%>

<link href="/WEB-INF/stylesheets/jumbotron.css" rel="stylesheet">

<%@include file= "/layouts/header.jsp" %>

<div class="jumbotron">
</div>

<main role="main">
    <div class="container">
        <h1>Edit Category</h1>            
  <h4><c:out value='${message}' /></h4>
  <form action="/jsp/categories?action=update&id=<c:out value='${categories.getId()}' />" method="post">
  <%@include file= "form.html" %>
  </form>
</div> <!-- /container -->
</main>
<hr>
<center><%@include file= "/layouts/footer.html" %></center>
