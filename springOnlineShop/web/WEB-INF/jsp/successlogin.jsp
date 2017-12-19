<%-- 
    Document   : successlogin
    Created on : Dec 18, 2017, 3:45:16 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="<c:url value="/resources/css/bootstrap.css"/>" rel="stylesheet">
        <link href="<c:url value="/resources/css/style.css"/>" rel="stylesheet">
        
    </head>
    <body>
        <h1 class="jumbotron"><marquee>You Can Choose Anything For Good Day</marquee> </h1>
        keranjang = ${totals}<br/>
        <c:forEach var="dataHarga" items="${sessionScope.cart.isiKeranjang.values()}">
            <c:set var="jumlahHargaTotalBelanjaOnline" value="${jumlahHargaTotalBelanjaOnline + dataHarga.produk.productPrice}"></c:set>
                
        </c:forEach>
        Jumlah Biaya = ${jumlahHargaTotalBelanjaOnline};
        <jsp:include page="content.jsp"></jsp:include>
    </body>
</html>
