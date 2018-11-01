<%-- 
    Document   : list
    Created on : Oct 19, 2018, 11:38:57 PM
    Author     : halimmah
--%>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<%@page language= "java" contentType="text/html; charset=UTF-8" pageEncoding="UTF8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head><title>List Categories</title></head>
<body>
    <div align="center">
        <h1>List of Category</h2></h1>
        <h4><c:out value='${message}' /></h4>
        <h2><a href="categories?action=new">Add List</a></h2>
        <table class="w3-table-all">
            <tr class="w3-gray">
                <th>ID</th>
                <th>Name</th>
                <th>Parent Categories</th>
                <th colspan='2'>Actions</th>
            </tr>
            <c:forEach var="category" items="${categories}">
                <tr>
                    <td><c:out value="${category.id}" /></td>
                    <td><c:out value="${category.name}" /></td>
                    <td><c:out value="${category.category_id}" /></td>
                    <td>
                        <a href="categories?action=edit&id=<c:out value='${category.getId()}' />">Edit</a>
                    </td>
                    <td>
                        <a href="categories?action=delete&id=<c:out value='${category.getId()}' />" onclick="return confirm('Are you sure?')" >Delete</a> 
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>      
</body>
</html>
