<%-- 
    Document   : list
    Created on : Oct 13, 2018, 8:09:16 AM
    Author     : thancook
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Feedback</title>
        <!-- Latest compiled and minified CSS -->
        <!--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">-->

        <!-- Optional theme -->
        <!--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">-->

        <!-- Latest compiled and minified JavaScript -->
        <!--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>-->
    </head>
    <body>
        <div>
            <a href="#">Home</a> |
            <a href="#">Search</a> |
            <a href="#">My Products</a> |
            <a href="#">My Cart</a> |
            <a href="#">Incoming Orders</a> |
            <a href="#">My Profile</a> |
            <a href="#">Sign Out</a>
        </div>
        <hr/>
        <fieldset>
          <legend>Seller1. PT. Timbul Tenggelam</legend>
          <p>Address: Jalan Medan Merdeka Jakarta</p>
          <p>Cancelled: 10, Ordered: 100</p>
        </fieldset>
        <c:forEach var="feedbacks" items="${feedbacks}">
            <p>(Rating: <c:out value="${feedbacks.rating}" />) Comment: "<c:out value="${feedbacks.content}" />!" (Buyer: <c:out value="${feedbacks.buyerId}"/>)</p>
        </c:forEach>
<!--        <p>(Very Bad) I am very disapointed with your service!! (Anonim, 2018-10-20)</p>
        <p>(Super) I am very pleaseured with your service!! (Bang Wahid, 2018-10-11)</p>
        <p>(Super) Quick and Clear!! (Anonim, 2018-10-20)</p>-->
        
    </body>
</html>
