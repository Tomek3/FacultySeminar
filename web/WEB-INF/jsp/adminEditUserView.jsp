<%-- 
    Document   : adminEditUserView
    Created on : 2015-09-28, 04:47:33
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
            <h1>Edytuj dane użytkownika</h1>
            <hr />
            <div class="legend">
                <p>Login:</p>
                <p>Imię:</p>
                <p>Nazwisko:</p>
                <p>Kraj:</p>
                <p>Hasło:</p>
                <p>Miasto:</p>
                <p>Kod pocztowy:</p>
                <p>Ulica:</p>
                <p>Numer telefonu:</p>
            </div>
            <div class="fields">
                <spring:nestedPath path="user">
                    <form action="" method="post">
                        <spring:bind path="pesel">
                            <input type="text" name="${status.expression}" value="${current_user.pesel}">
                        </spring:bind>
                        <br />
                        <spring:bind path="name">
                            <input type="text" name="${status.expression}" value="${current_user.name}">
                        </spring:bind>
                        <br />
                        <spring:bind path="surename">
                            <input type="text" name="${status.expression}" value="${current_user.surename}">
                        </spring:bind>
                        <br />
                        <spring:bind path="country">
                            <input type="text" name="${status.expression}" value="${current_user.country}">
                        </spring:bind>
                        <br />
                        <spring:bind path="password">
                            <input type="password" name="${status.expression}" value="${current_user.password}">
                        </spring:bind>
                        <br />
                        <spring:bind path="city">
                            <input type="text" name="${status.expression}" value="${current_user.city}">
                        </spring:bind>
                        <br />
                        <spring:bind path="post_code">
                            <input type="text" name="${status.expression}" value="${current_user.post_code}">
                        </spring:bind>
                        <br />
                        <spring:bind path="street">
                            <input type="text" name="${status.expression}" value="${current_user.street}">
                        </spring:bind>
                        <br />
                        <spring:bind path="phone_number">
                            <input type="text" name="${status.expression}" value="${current_user.phone_number}">
                        </spring:bind>
                        <br />
                        <br />
                        <spring:bind path="admin">
                            <c:if test="${current_user.admin == true}">
                                <p>Prawa admina:<input type="checkbox" name="admingrants" value="true" checked></p><br>
                            </c:if>
                            <c:if test="${current_user.admin == false}">
                                <p>Prawa admina:<input type="checkbox" name="admingrants" value="false"></p><br>
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
