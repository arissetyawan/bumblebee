
<%@include file="/layouts/header.jsp" %>
        <h4><c:out value='${message}' /></h4>
        <div class="jumbotron">
            <div class="container text-center">
              <h1>Seller PT. Timbul Tenggelam</h1>      
              <p>Address: Jalan Medan Merdeka Jakarta</p>
              <p>Canceled: 10</p>
              <p>Ordered: 99</p>
            </div>
        </div>
        <h4><c:out value='${message}' /></h4>
        <c:forEach var="feedbacks" items="${feedbacks}">
            <p>(Rating: <c:out value="${feedbacks.rating}" />) Comment: "<c:out value="${feedbacks.content}" />!" (Buyer: <c:out value="${feedbacks.buyerId}"/>)</p>
        </c:forEach>
    </body>
</html>
