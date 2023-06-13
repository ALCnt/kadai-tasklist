<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="../layout/app.jsp">
    <c:param name="content">
        <h2>タスク一覧</h2><br><br>
        <table border="1">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>タスク内容</th>
                    <th>作成日時</th>
                    <th>更新日時</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="tasks" items="${tasks}">
                    <tr>
                        <th><a href="${pageContext.request.contextPath}/show?id=${tasks.id}"><c:out value="${tasks.id}" /></a></th>
                        <th><c:out value="${tasks.content}" /></th>
                        <th><c:out value="${tasks.created_at}" /></th>
                        <th><c:out value="${tasks.updated_at}" /></th>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <br>
        <p><a href="${pageContext.request.contextPath}/new" >タスクを登録する</a></p>
    </c:param>
</c:import>
