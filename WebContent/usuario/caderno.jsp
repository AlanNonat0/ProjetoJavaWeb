<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp"%>
<%@ page import="model.UserBean" %>

<% 
	UserBean user = (UserBean) session.getAttribute("user");
	String context = request.getContextPath();
%>

<!-- Header -->
<jsp:include page="../app/components/header.jsp"></jsp:include>

<!-- -----------------Area de alertas----------------- -->
<jsp:include page="../app/components/alert.jsp"></jsp:include>
<!-- ----------------------------------------------- -->
   


<!-- Footer -->
<jsp:include page="../app/components/footer.jsp"></jsp:include>
