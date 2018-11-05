<%-- 
    Document   : new
    Created on : Oct 31, 2018, 8:34:58 AM
    Author     : USER
--%>


<link href="/WEB-INF/stylesheets/jumbotron.css" rel="stylesheet">
<%@include file= "/layouts/header.jsp" %>





    <div class="jumbotron">

        <div class="container">
            <h1>Adding Products</h1>            

            <form action="products?action=create" method="post"> 
                
                <%@include file="form.html" %>
                
            </form>
        </div>     
            
    


 <%@include file= "/layouts/footer.html" %>
</div>