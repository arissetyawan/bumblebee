<%-- 
    Document   : signup
    Created on : Oct 16, 2018, 3:42:41 PM
    Author     : MSyafiqMarzuki
--%>
<link href="/WEB-INF/stylesheets/login.css" rel="stylesheet">
<link href="/WEB-INF/stylesheets/jumbotron.css" rel="stylesheet">

<%@include file= "/layouts/header.jsp" %>


<br>
<br>



<div class="container">
    <div class="jumbotron"
        
    <h1 class="h3 mb-3 font-weight-normal">Sign Up</h1>            

  <h4><c:out value='${message}' /></h4>
  

  <form  action="/kamumau/users?action=create" method="post" class="w3-container"> 
  <table>
            <tr><td>Email</td>
                <td><input type="text" class="w3-input" name="email" value="<c:out value='${user.getEmail()}'/>"/></td></tr>
            <tr><td>Password</td> 
                <td><input type="password" class="w3-input" name="password" id="password" value="<c:out value='${user.getPassword()}' />"/></td></tr>
            <tr><td>ReTypePassword</td>
                <td><input type="password" class="w3-input" name="repassword" id="repassword" value="<c:out value='${user.geRetpassword()}' />"/> <span id='message'></span></td></tr>
            <tr><td>Full Name</td>
                <td><input type="text" class="w3-input" name="fullname" value="<c:out value='${user.getFullname()}' />"/></td></tr>
            <tr><td>Address</td>
                <td><input type="text" class="w3-input" name="address" value="<c:out value='${user.getAddress()}' />"/></td></tr>
            <tr><td>Bank Name</td>
                <td><select name="bankname" style="width: 155px">
                        <option>BCA</option>
                        <option>BRI</option>
                        <option>MANDIRI</option>
                        <option>CIMB</option>
                    </select>
                </td></tr>
            <tr><td>Account No</td>
                <td><input type="text" class="w3-input" name="accountno" value="<c:out value='${user.getAccountno()}' />"/></td></tr>
            <tr><td colspan="2"><input type="submit" value="Sign In"/></td></tr>   
           
            
        </table>

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