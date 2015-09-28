<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
    <title>WebLibrary</title>
</head>
<body>
    <c:if test="${sessionScope.userPesel != null}">
        <c:if test="${sessionScope.userGrants == true}">
            <c:redirect url="/paneladmin.htm"/>
        </c:if>
        <c:if test="${sessionScope.userGrants != true}">
            <c:redirect url="/paneluser.htm"/>
        </c:if>
    </c:if>
    <div id="content">
        <div id="menu_top">
                <a href="index.htm"><img border="0" src="${pageContext.request.contextPath}/img/strona_glowna_top.jpg" ></a>
                <a href="contact.htm"><img border="0" src="${pageContext.request.contextPath}/img/kontakt_top.jpg"></a>
                <br />
        </div>
        <div class="clear"></div>
        <div id="top">
            <img src="${pageContext.request.contextPath}/img/top.jpg">
        </div>
        <div id="info">
                <!-- TUTAJ ZMIENIAMY ZAWARTOSC -->
                <!-- TUTAJ ZMIENIAMY ZAWARTOSC -->
                <h2>Logowanie nie powiodło się.</h2>
                <br />
                <h2>${loginMsg}</h2>
                <br />
                <a href="index.htm">Spróbuj ponownie</a><br />
                <br />
        </div>
        <div id="footer">
            <img border="0" src="${pageContext.request.contextPath}/img/stopka.jpg">
        </div>
    </div>
</body>
</html>
