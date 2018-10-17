<%-- 
    Document   : signup
    Created on : Oct 16, 2018, 3:42:41 PM
    Author     : MSyafiqMarzuki
--%>
<link href="/WEB-INF/stylesheets/jumbotron.css" rel="stylesheet">

<%@include file= "/layouts/header.jsp" %>


<br>
<br>

<div class="container">
        
    <h1 class="h3 mb-3 font-weight-normal">Sign Up</h1>            

  <h4><c:out value='${message}' /></h4>
  
  <div class="jumbotron">

  <form action="/kamumau/user?action=create" method="post"> 
  <%@include file= "form.html" %>
  </form>
  
  </div>

  
  
  <hr>

</div> <!-- /container -->



    <%@include file= "/layouts/footer.html" %>
    
    <script>
        $('#password, #repassword').on('keyup', function () {
  if ($('#password').val() == $('#repassword').val()) {
    $('#message').html('Matching').css('color', 'green');
  } else 
    $('#message').html('Not Matching').css('color', 'red');
});
        
    </script>