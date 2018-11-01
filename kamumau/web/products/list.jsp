<%-- 
    Document   : list
    Created on : Oct 23, 2018, 12:20:08 PM
    Author     : bakhtiar
--%>
<link href="/WEB-INF/stylesheets/jumbotron.css" rel="stylesheet">
<%@include file="../layouts/header.jsp" %>
<br>
<br>
<br>

	<div class="wrap">
	<section>
            <div class="container">
                <table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
                    <thead>
                        <tr>
                            <th>
                                No
                            </th>
                            <th>
                                Name
                            </th>
                            <th>
                                Category
                            </th>
                            <th>
                                Price
                            </th>
                            <th>
                                Stock
                            </th>
                            <th>
                                Updated At
                            </th>
                            <th colspan="2">
                                Action
                            </th>
                        </tr>
                    </thead>
                    <tfoot>
                        <tr>
                            <th align="center">
                                No
                            </th>
                            <th align="center">
                                Name
                            </th>
                            <th align="center">
                                Category
                            </th>
                            <th align="center">
                                Price
                            </th>
                            <th align="center">
                                Stock
                            </th>
                            <th align="center">
                                Updated At
                            </th>
                            <th colspan="2" align="center">
                                Action
                            </th>
                        </tr>
                    </tfoot>
                    
                       <% int no =1; %>
                        <c:forEach items="${products}" var="products">
                            
                            <tr>
                                <td>
                                    <% out.print(no); %>
                                </td>
                                <td>
                                    <c:out value="${products.name}"/>
                                </td>
                                <td>
                                    <c:out value="${products.category_id}"/>
                                </td>
                                <td>
                                    <c:out value="${products.price}"/>
                                </td>
                                <td>
                                    <c:out value="${products.stock}"/>
                                </td>
                                <td>
                                    <c:out value="${products.updated_at}"/>
                                </td>
                                    <td align="center"><a href="products?action=edit&id=<c:out value="${products.product_id}"/>">Edit</a></td>
                                    <td align="center"><a href="products?action=delete&id=<c:out value="${products.product_id}"/>">Delete</a></td>
                                </tr>
                                <% no++; %>
                            </c:forEach>
                                
                </table>
                <div>
                <a href="products?action=new" role="button" class="btn btn-primary btn-lg" data-toggle="modal">Add New Product</a>
                </div>
            </div>
          
	</section>	
</div>
                        
<%@include file="../layouts/footer.html" %>
                        
                    

<script>
    $(document).ready(function() {
        $('#example').DataTable();
    });
</script>

