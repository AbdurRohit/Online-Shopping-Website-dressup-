<%@page import="java.util.concurrent.ExecutionException"%>
<%@page import="oracle.jdbc.util.Login"%>
<%@page import="java.util.*"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.Out"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%
String email="sheikhabdurrohit@gmail.com";
String product=request.getParameter("Black_Casual");
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection conn=DriverManager.getConnection("odbc:oracle:thin:@localhost:1521:xe","rohit","0");
Statement st=conn.createStatement();
st.executeUpdate("INSERT INTO CART (EMAIL,PID) VALUES ('"+email+"','"+product+"')");
out.print("Value inserted");
}catch(Exception e){
	out.print(e);
}
%>