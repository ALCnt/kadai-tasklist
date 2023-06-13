<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="../layout/app.jsp">
    <c:param name="content">
        <h2> id: ${tasks.id} の編集ページ</h2>

        <form method="POST" action="${pageContext.request.contextPath}/update">
            <c:import url="../layout/form.jsp"></c:import>
        </form>

        <p><a href="#" onclick="confirmDestroy();">達成した！</a></p>
        <form method="POST" action="${pageContext.request.contextPath}/destroy"></form>
        <script>
        function confirmDestroy(){
            if(confirm("削除されます。本当によろしいですか？")){
                document.forms[1].submit();
                }
             }
        </script>
        <p><a href="${pageContext.request.contextPath}/index">一覧に戻る</a></p>
    </c:param>
</c:import>