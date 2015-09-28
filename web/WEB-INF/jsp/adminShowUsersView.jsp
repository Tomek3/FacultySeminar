<%-- 
    Document   : adminShowUsersView
    Created on : 2015-09-28, 02:26:55
    Author     : Tomek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
    <title>FacultySeminar</title>
</head>

<body>
    <c:if test="${sessionScope.userGrants==null || sessionScope.userGrants != true}">
            <c:redirect url="index.htm"/>
   </c:if>
    <div id="content">
        <div id="menu_top">
                <a href="index.htm"><img border="0" src="${pageContext.request.contextPath}/img/strona_glowna_top.jpg"></a>
                <a href="contact.htm"><img border="0" src="${pageContext.request.contextPath}/img/kontakt_top.jpg"></a>
                <br />
        </div>
        <div class="clear"></div>
        <div id="top">
            <img src="${pageContext.request.contextPath}/img/top.jpg">
        </div>
        <div id="info">
                <!-- TUTAJ ZMIENIAMY ZAWARTOSC -->
                <h1>Użytkownicy</h1>
                <hr />
                <div class="tableContainer" >
                <table >
                    <tr>
                        <td>Login</td>
                        <td >Imię</td>
                        <td>Nazwisko</td>
                        <td></td>
                        <td></td>
                        <c:forEach items="${listOfUsers}" var="user">
                        <tr>
                           <td><c:out value="${user.pesel}"/></td>
                           <td><c:out value="${user.name}"/></td>
                           <td><c:out value="${user.surename}"/></td>
                           <td><a href="adminedituser.htm?userpesel=${user.pesel}"><c:out value="Podgląd"/></a></td>
                           <td><a href="admindeleteuser.htm?userpesel=${user.pesel}"><c:out value="Usuń"/></a></td>
                       </tr>
                    </c:forEach>
                    </tr>
                    
                </table>
            </div>
                <a href="paneladmin.htm">Powrót</a>
        </div>
        <div id="footer">
            <img border="0" src="${pageContext.request.contextPath}/img/stopka.jpg">
        </div>
    </div>
</body>
</html>
