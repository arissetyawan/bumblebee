<%-- 
    Document   : signup
    Created on : Oct 22, 2018, 11:21:17 AM
    Author     : MSyafiqMarzuki
--%>

<link href="/WEB-INF/stylesheets/jumbotron.css" rel="stylesheet">

<%@include file= "/layouts/header.jsp" %>


<br>
<br>



<div class="container">
    <div class="jumbotron"
        
    <h1 class="h3 mb-3 font-weight-normal">Sign Up</h1>            

  <h4><c:out value='${message}' /></h4>
  

  <form  action="/kamumau/users?action=create" method="post" class="w3-container"> 
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