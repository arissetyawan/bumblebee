<%-- 
    Document   : myprofile
    Created on : Oct 16, 2018, 11:18:50 PM
    Author     : MSyafiqMarzuki
--%>

<link href="/WEB-INF/stylesheets/jumbotron.css" rel="stylesheet">

<%@include file= "/layouts/header.jsp" %>
<%-- 
    Document   : add_user
    Created on : Sep 27, 2018, 3:42:41 PM
    Author     : arissetyawan.email@gmail.com
--%>
<link href="/WEB-INF/stylesheets/jumbotron.css" rel="stylesheet">

<%@include file= "/layouts/header.jsp" %>

<main role="main">

<div class="container">

  <h1>Adding Person</h1>            

  <h4><c:out value='${message}' /></h4>

  <form action="/kamumau/users?action=create" method="post"> 
  <%@include file= "form.html" %>
  </form>
  
</div>


</main>

    <%@include file= "/layouts/footer.html" %>


