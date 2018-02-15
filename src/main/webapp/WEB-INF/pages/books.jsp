

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<%@ page session="false" %>



<html>
<head>
    <title>Title</title>
</head>
<body>
<%--<a href="../../books_page">books_page</a>--%>
<a href="../../index.jsp">Back to main menu</a>
<br/>
<br/>

<h1>Book List</h1>
<%--<h1>${list}</h1>--%>

<%--<br/>--%>
<%--<form:form method="get" action="/">--%>
    <%--<label>Enter name for search:</label>--%>
    <%--<input type="text" name="name"/>--%>
    <%--<input type="submit" value="Search"/>--%>
<%--</form:form>--%>
<%--<form:form method="get" action="/" >--%>
    <%--<label>Enter age for search:</label>--%>
    <%--<input type="number" name="age"/>--%>
    <%--<input type="submit" value="Search"/>--%>
<%--</form:form>--%>
<%--<form:form method="get" action="/">--%>
    <%--<input type="submit" value="Show All"/>--%>
<%--</form:form>--%>
<%--<form:form method="get" action="/new">--%>
    <%--<input type="submit" value="Add new User"/>--%>
<%--</form:form>--%>


<%--<a href="<c:url value="/"/>" target="_blank">Books list</a>--%>

<%--<div>       <!-- content -->--%>
    <%--<div>    <!-- buttons holder -->--%>
        <%--<button onclick="location.href='../bookdata'">List users</button>--%>
        <%--<button onclick="location.href='/bookdata'">Add user</button>--%>
        <%--<button type="submit" value="Search"/>--%>
        <%--<a href="/bookdata/${book.id}" target="_blank">${book.bookTitle}</a>--%>

    <%--</div>--%>
<%--</div>--%>

<%--<form method="get" action="/bookdata">--%>

<%--<input type="text" name="name"/>--%>
<%--<input type="submit" name="name" value="/bookdata"/>--%>
<%--</form>--%>


<c:if test="${!empty listBooks}">
<table class="tg">
    <tr>
        <th width="80">ID</th>
        <th width="120">Название</th>
        <th width="120">Описание</th>
        <th width="120">Автор</th>
        <th width="80">ISBN</th>
        <th width="80">Год изд.</th>
        <th width="80">Уже читали</th>
        <th width="80">Edit</th>
        <th width="80">Delete</th>
    </tr>
    <c:forEach items="${listBooks}" var="book">
        <tr>
            <td>${book.id}</td>
            <%--<td>${book.title}</td>--%>
            <td><a href="/bookdata/${book.id}" target="_blank">${book.title}</a></td>

            <td>${book.description}</td>
            <td>${book.author}</td>
            <td>${book.isbn}</td>
            <td>${book.printYear}</td>
            <td>${book.readAlready}</td>
            <%--<td>${book.price/100}${book.price%100}</td>--%>
            <td><a href="<c:url value='/edit/${book.id}'/>">Edit</a></td>
            <td><a href="<c:url value='/remove/${book.id}'/>">Delete</a></td>
        </tr>
    </c:forEach>
</table>
</c:if>

<%--<h1>Add a Book</h1>--%>

<%--<c:url var="createBook" value="/books/add"/>--%>

<%--<form:form action="${createBook}" commandName="book">--%>
    <%--<table>--%>
        <%--<c:if test="${!empty book.title}">--%>
            <%--<tr>--%>
                <%--<td>--%>
                    <%--<form:label path="id">--%>
                        <%--<spring:message text="ID"/>--%>
                    <%--</form:label>--%>
                <%--</td>--%>
                <%--<td>--%>
                    <%--<form:input path="id" readonly="true" size="8" disabled="true"/>--%>
                    <%--<form:hidden path="id"/>--%>
                <%--</td>--%>
            <%--</tr>--%>
        <%--</c:if>--%>
        <%--<tr>--%>
            <%--<td>--%>
                <%--<form:label path="title">--%>
                    <%--<spring:message text="Title"/>--%>
                <%--</form:label>--%>
            <%--</td>--%>
            <%--<td>--%>
                <%--<form:input path="title"/>--%>
            <%--</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td>--%>
                <%--<form:label path="description">--%>
                    <%--<spring:message text="Description"/>--%>
                <%--</form:label>--%>
            <%--</td>--%>
            <%--<td>--%>
                <%--<form:input path="description"/>--%>
            <%--</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td>--%>
                <%--<form:label path="author">--%>
                    <%--<spring:message text="Author"/>--%>
                <%--</form:label>--%>
            <%--</td>--%>
            <%--<td>--%>
                <%--<form:input path="author"/>--%>
            <%--</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td>--%>
                <%--<form:label path="isbn">--%>
                    <%--<spring:message text="ISBN"/>--%>
                <%--</form:label>--%>
            <%--</td>--%>
            <%--<td>--%>
                <%--<form:input path="isbn"/>--%>
            <%--</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td>--%>
                <%--<form:label path="printYear">--%>
                    <%--<spring:message text="YEAR"/>--%>
                <%--</form:label>--%>
            <%--</td>--%>
            <%--<td>--%>
                <%--<form:input path="printYear"/>--%>
            <%--</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td colspan="2">--%>
                <%--<c:if test="${!empty book.title}">--%>
                    <%--<input type="submit"--%>
                           <%--value="<spring:message text="Edit Book"/>"/>--%>
                <%--</c:if>--%>
                <%--<c:if test="${empty book.title}">--%>
                    <%--<input type="submit"--%>
                           <%--value="<spring:message text="Add Book"/>"/>--%>
                <%--</c:if>--%>
            <%--</td>--%>
        <%--</tr>--%>
    <%--</table>--%>
<%--</form:form>--%>
</body>
</html>