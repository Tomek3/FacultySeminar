<%-- 
    Document   : adminAddDates
    Created on : 2015-09-28, 08:54:55
    Author     : Tomek
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
    <title>FacultySeminar</title>
</head>

<body>
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
            <h1>Dodawanie terminów seminariów</h1>
            <hr />
            <div class="legend">
                    <p>Data od:</p>
                    <p>Data do:</p>
                </div>
                <div class="fields">
                    
                    <spring:nestedPath path="seminar_date">
                        <form action="dates.htm" method="post">
                            <spring:bind path="dateFrom">
                                <input type="date" name="${status.expression}" value="${status.value}" />
                            </spring:bind>
                            <spring:bind path="dateTo">
                                 <br />
                                <input type="date" name="${status.expression}" value="${status.value}" />
                            </spring:bind>
                            <br />
                            <input src="${pageContext.request.contextPath}/img/zaloguj.jpg" type="image" value="" />
                            <br />
                        </form>
                    </spring:nestedPath>
                </div>
                
                        
        </div>
        <div id="footer">
            <img border="0" src="${pageContext.request.contextPath}/img/stopka.jpg">
        </div>
    </div>
</body>
</html>