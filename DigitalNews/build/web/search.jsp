<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <link href="css/search.css" rel="stylesheet" type="text/css"/>
        <link href="css/header.css" rel="stylesheet" type="text/css"/>
        <link href="css/footer.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>

        <div class="container">
            <%@include file="/components/header.jsp" %>
            <div class="main">
                <div class="left">
                    ${alert}                             
                    <c:if test="${listA!=null}">
                        <c:forEach items="${listA}" var="o">
                            <div class="per_article">
                                <div class="title">
                                    <a href="view?aid=${o.id}">${o.title}</a>
                                </div>
                                <img alt=""/>
                                <div class="search_description">
                                    <p>
                                        ${o.summary}
                                    </p>
                                </div>
                            </div>
                        </c:forEach>
                    </c:if>
                    <c:if test="${listA.size()!=0}">
                        <div class="paging">                      
                            <c:forEach var="i"  begin="1" end="${endPage}">
                                <a href="searcharticle?text=${text}&page=${i}" class="${i==index?"active":""}">${i}</a>

                            </c:forEach>                       
                        </div>
                    </c:if>
                </div>
                <%@include file="/components/right.jsp" %>
            </div>
            <div class="footer">
            </div>
        </div>
    </body>
</html>
