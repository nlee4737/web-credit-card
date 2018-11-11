<%-- 
    Document   : History
    Created on : Nov 6, 2018, 10:58:29 PM
    Author     : Nathan Lee
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page import="business.CreditCard"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Account Log</title>
    </head>
    <body>
        <h2>Credit Card Log for: ${card.accountId}</h2>
        <br>
        <table border="1">
            <c:forEach var="history" items="${card.creditHistory}">
                <tr>
                    <td align="right">${card.creditHistory}</td>
                </tr>
            </c:forEach>
                    
        </table>
        <%--replace with JSTL forEach loop with a table--%>
        <%
            CreditCard card = (CreditCard) request.getSession().getAttribute("card");
            for (String s: card.getCreditHistory()) {
        %>
        <%= s %><br>
        <% } %>
    </body>
</html>
