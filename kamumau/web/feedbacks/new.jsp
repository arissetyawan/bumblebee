<%-- 
    Document   : new
    Created on : Oct 13, 2018, 8:09:07 AM
    Author     : thancook
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <!-- Font Awesome Icon Library -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
        .checked {
            color: orange;
        }
        </style>
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
          <legend>Seller. PT. Timbul Tenggelam</legend>
          <p>Address: Jalan Medan Merdeka Jakarta</p>
          <p>Cancelled: 10, Ordered: 100</p>
        </fieldset>
        <br><br>
        <fieldset>
            <legend>Ensure your feedback is fair and please, be honest :)</legend>
            Order No: <input type="text"><br><br>
            Comment: <textarea></textarea><br><br>
            Rating:
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star"></span>
            
            <br><br>
            
            <input type="submit" value="Submit">
        </fieldset>
    </body>
</html>
