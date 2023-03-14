<%@page import="java.lang.ProcessBuilder.Redirect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.Out"%>

<%
session.setAttribute("cart", 1);//creating the value as session 
//int i=(int)session.getAttribute("cart");//getting the value of cart variable/
RequestDispatcher rd=request.getRequestDispatcher("testproduct.jsp");//redirecting to testpage
rd.forward(request,response);
%>