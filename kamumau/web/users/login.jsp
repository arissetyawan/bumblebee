<%-- 
    Document   : list
    Created on : Oct 11, 2018, 8:27:04 PM
    Author     : x201
--%>
<link href="/WEB-INF/stylesheets/login.css" rel="stylesheet">
<link href="/WEB-INF/stylesheets/jumbotron.css" rel="stylesheet">

<%@include file= "/layouts/header.jsp" %>
    <br />      
    <br />      
    <br />
    

    
    <div class="container">
        <form class="form-signin" action="users?action=do-login" method="POST">
            <div class="col-md-4">
                <h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>
                <label for="inputEmail" class="sr-only">Email address</label>
                <input type="email" id="inputEmail" name="email" class="form-control" placeholder="Email address" required autofocus>
            </div>
            <br>
            <div class="col-md-4">
                <label for="inputPassword" class="sr-only">Password</label>
                <input type="password" name="password" id="inputPassword" class="form-control" placeholder="Password" required>
            </div>
      
      <div class="col-md-4">
      <div class="checkbox mb-3">
        <label>
          <input type="checkbox" value="remember-me"> Remember me
        </label>
      </div>
            
      <button class="btn btn-lg btn-primary btn-block" type="submit" id="btn-submit">Sign in</button>
      </div>
    </form>
   

    </div>

   
    

<%@include file= "/layouts/footer.html" %>
