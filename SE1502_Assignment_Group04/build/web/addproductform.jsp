<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add new Product</title>
    </head>
    <body>
        <h1>Add new product information</h1>
        <form action="createNewProduct" method="POST" name="f1">
            <table>
                <tr>
                    <td>Product ID</td>
                    <td>: <input type="text" name="txtID" value="${param.txtID}">
                        <font color="red">${requestScope.INVALID.idError}</font></td>
                </tr>
                <tr>
                    <td>Product Name</td>
                    <td>: <input type="text" name="txtName" value="${param.txtName}">
                        <font color="red">${requestScope.INVALID.nameError}</font></td>
                </tr>
                <tr>
                    <td>Product Brand</td>
                    <td>: <input type="text" name="txtBrand" value="${param.txtBrand}">
                        <font color="red">${requestScope.INVALID.brandError}</font></td>
                </tr>
                <tr>
                    <td>Description</td>
                    <td>: <input type="text" name="txtDescription" value="${param.txtDescription}">
                        <font color="red">${requestScope.INVALID.descriptionError}</font></td>
                </tr>
                <tr>
                    <td>Product Status</td>
                    <td>: <input type="text" name="txtStatus" value="${param.txtStatus}">
                        <font color="red">${requestScope.INVALID.statusError}</font></td>
                </tr>
                <tr>
                    <td>Price</td>
                    <td>: <input type="number" name="txtPrice" value="${param.txtPrice}">
                        <font color="red">${requestScope.INVALID.priceError}</font></td>
                </tr>
               
                <tr>
                    <td>Category</td>
                    <td>: <select name="cboCategory">

                            <c:forEach items="${requestScope.listCategories}" var="dto">
                                <option value="${dto.id} - ${dto.name}"> ${dto.id} - ${dto.name}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td colspan="2"> <input type="submit" value="Create"/></td>
                </tr>

            </table>
        </form>
        <br> <br>

        <a href="mainAdminPage">Back to Product List</a>
    </body>
</html>
