<%-- 
    Document   : adminEditDateView
    Created on : 2015-09-28, 11:19:14
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
            <h1>Edytuj dane wybranego seminarium</h1>
            <hr />
            <div class="legend">
                <p>Nazwa:</p>
                <p>Opis:</p>
            </div>
            <div class="fields">
                <spring:nestedPath path="seminar">
                    <form action="" method="post">
                        <spring:bind path="semName">
                            <input type="text" name="${status.expression}" value="${current_seminar.semName}">
                        </spring:bind>
                        <br />
                        <spring:bind path="semDescription">
                            <input type="text" name="${status.expression}" value="${current_seminar.semDescription}">
                        </spring:bind>
                        <br />
                        
                     
                        <br />
                        <br />
                        <spring:bind path="semAvailable">
                            <c:if test="${current_seminar.semAvailable == true}">
                                <p>Dostępny:<input type="checkbox" name="availablegrants" value="true" checked></p><br>
                            </c:if>
                            <c:if test="${current_seminar.semAvailable == false}">
                                <p>Dostępny:<input type="checkbox" name="<div>availablegrants</div>" value="false"></p><br>
                            </c:if>    
                        </spring:bind>
  
                        
                         <input src="${pageContext.request.contextPath}/img/edytuj.jpg" type="image" value="" />
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
