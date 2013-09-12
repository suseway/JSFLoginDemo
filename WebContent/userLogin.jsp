<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h"  uri="http://java.sun.com/jsf/html"%>

<%
String path = request.getContextPath();
String baseUrl = request.getScheme() + "://" + request.getServerName() + "/JSFLoginDemo";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<f:view>
	<f:loadBundle basename="com.jsfdemo.MessageBundle" var="bundle"/>
		
		<h:form id="loginForm" rendered="true">
			
			<h:outputLabel rendered="true" for="userName">
				<h:outputText value="#{bundle.user_name_label}" />
			</h:outputLabel>
			
			<h:inputText id="userName" value="#{userBean.userName}" style="width: 233px; "></h:inputText>
			
			<h:outputLabel rendered="true" for="password">
				<h:outputText value="#{bundle.user_password_label}" />
			</h:outputLabel>
			<h:inputSecret id="password" value="#{userBean.password}" styleClass="inputbox" style="width: 259px; "/>

			<h:commandButton value="Login" id="login" action="#{userBean.loginUser}"></h:commandButton>
			
		</h:form>
</f:view>
</body>
</html>