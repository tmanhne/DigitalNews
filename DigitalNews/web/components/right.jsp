<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="right">
            <div class="title">Digital News</div>
            <div class="short_description">
                ${recentnews.summary}
            </div>
            <div class="title"> Search </div>
            
            <form action="searcharticle" method="POST">
                <input type="text" name="text" required=""/>
                <button type="submit"> Go </button>
            </form>
            <div class="title" id="article">Last Articles </div>
            <c:forEach items="${top5News}" var="o">
                <a href="view?aid=${o.id}">${o.title}</a> <br>
            </c:forEach>
        </div>
    </body>
</html>

