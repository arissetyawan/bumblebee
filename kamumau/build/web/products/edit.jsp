<%-- 
    Document   : edit
    Created on : Oct 31, 2018, 8:35:08 AM
    Author     : USER
--%>

<%@page language= "java" contentType="text/html; charset=UTF-8" pageEncoding="UTF8" %>
<%@include file= "/layouts/header.jsp" %>
<div style="padding-left: 5%; margin-top: 5%">
        <h2>
            Edit Product
        </h2>
        <p>Edit a product data</p>
        </div>
        <hr>
        <div class="container" style="margin-top: 1%"></div>
<!DOCTYPE html>
<html>
  <head><title>Product</title></head>

    <body>
         <%@include file= "/layouts/navbar_not_logged_in.jsp" %>
         <br>
         <br>
         <br>
            <h4><c:out value='${message}' /></h4>
        <form action="products?action=update&id=<c:out value='${product.getId()}' />" method="post"> 
        <%@include file= "form.html" %>
        </form>
    </body>
</html>