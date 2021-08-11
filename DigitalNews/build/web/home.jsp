<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/header.css" rel="stylesheet" type="text/css"/>
        <link href="css/footer.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <%@include file="/components/header.jsp" %>
            <div class="main">
                <c:if test="${recentnews==null}">
                    <div class="left">
                        ${thongbao}
                    </div>
                </c:if>
                <c:if test="${recentnews!=null}">
                    <div class="left">
                        <div class="title">
                            ${recentnews.title}
                        </div>
                        <div class="image"></div>
                        <div class="description">
                            ${recentnews.content}
                        </div>
                        <div class="author"> 
                            By ${recentnews.writer} | ${recentnews.getDatePublished()}
                        </div>
                    </div>
                </c:if>
                <%@include file="/components/right.jsp" %>
            </div>
            <div class="footer">
            </div>
        </div>
    </body>
</html>
