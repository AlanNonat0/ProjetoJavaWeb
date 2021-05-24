<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="/error.jsp"%>
<%@ page import="model.UserBean" %>
<% 	String context = request.getContextPath();%>
<!-- Header -->
<jsp:include page="app/components/header.jsp"></jsp:include>

<!-- -----------------Area de alertas----------------- -->
<jsp:include page="app/components/alert.jsp"></jsp:include>
<!-- ----------------------------------------------- -->




<div class="row mx-auto d-flex justify-content-around mt-4">

	
	<jsp:include page="app/components/form_login.jsp"></jsp:include>
	<jsp:include page="app/components/form_register.jsp"></jsp:include>

</div>


<!-- Footer -->
<jsp:include page="app/components/footer.jsp"></jsp:include>
