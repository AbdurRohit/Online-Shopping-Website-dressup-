<%@page import="oracle.jdbc.util.Login"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.Out"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%  session.invalidate();
 response.sendRedirect("Login.jsp");%>