<%-- 
    Document   : login
    Created on : Oct 15, 2018, 9:08:07 PM
    Author     : MSyafiqMarzuki
--%>

<link href="/WEB-INF/stylesheets/jumbotron.css" rel="stylesheet">
<%@include file= "/layouts/header.jsp" %>
<br />
<br />
<br />
        <h1 class="h3 mb-3 font-weight-normal">Please Sign In</h1>
        <form>
            <label for="inputEmail" class="sr-only">Email Address</label>
            <input type="email" id="inputEmail" class="form-control" placeholder="Email address">
            <label for="inputPassword" class="sr-only">Password</label>
            <input type="password" id="inputPassword" class="form-control" placeholder="Password">
            <div class="checkbox mb-3">
                <label>
                    <input type="checkbox" value="remember-me"> Remember me
                </label>
            </div>
            <button class="btn btn-lg btn-primary btn-block" type="submit" id="btn-submit">Sign In</button>
        </form>
        
<%@include file= "/layouts/footer.html" %>


