<%-- 
    Document   : panelAdminView
    Created on : 2015-09-28, 02:04:25
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
    <title>WebLibrary</title>
</head>

<body>
    <c:if test="${sessionScope.userPesel == null || sessionScope.userGrants != true}">
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
                <h1>Panel admina</h1>
                <hr />
                <center>
                    <a href="adminacceptreservation.htm"><img src="${pageContext.request.contextPath}/img/zaakceptuj_rezerwacje.jpg" /></a><br />
                    <br />
                    <a href="adminshowborrowedbooks.htm"><img src="${pageContext.request.contextPath}/img/zwrot_ksiazki.jpg" /></a><br />
                    <br />
                    <a href="addbook.htm"><img src="${pageContext.request.contextPath}/img/dodaj_ksiazke.jpg" /></a><br />
                    <br />
                    <a href="adminshowbook.htm"><img src="${pageContext.request.contextPath}/img/wyswietl_ksiazki.jpg" /></a><br />
                    <br />
                    <a href="adminshowusers.htm"><img src="${pageContext.request.contextPath}/img/wyswietl_uzytkownikow.jpg" /></a><br />
                    <br />
                    
                    
                </center>
                
                
                
                
                <a href="logout.htm">Wyloguj</a>
        </div>
        <div id="footer">
            <img border="0" src="${pageContext.request.contextPath}/img/stopka.jpg">
        </div>
    </div>
</body>
</html>