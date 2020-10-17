<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/header.jsp" %>

<!-- Begin Page Content -->
<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Lista użytkowników</h1>
        <a href="/user/list" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                class="fas fa-download fa-sm text-white-50"></i> Dodaj użytkownika</a>
    </div>
    <table class="table">
        <tr >
            <th>Id</th>
            <th>Nazwa użytkownika</th>
            <th>Email</th>
            <th>Akcja</th>
        </tr>

        <c:forEach items="${users}" var="user">
            <tr >
                <td>${user.getId()}</td>
                <td>${user.getUsername()}</td>
                <td>${user.getEmail()}</td>
                <td>
                    <form action="/user/list" style="display:inline; font-size: 10px;">
                        <button type="submit">Pokaż</button>
                    </form>
                    <form action="/user/list" style="display:inline; font-size: 10px;">
                        <button type="submit">Edytuj</button>
                    </form>
                    <form action="/user/list" style="display:inline; font-size: 10px;">
                        <button type="submit">Usuń</button>
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>

</div>
<!-- /.container-fluid -->

<%@ include file="/footer.jsp" %>
