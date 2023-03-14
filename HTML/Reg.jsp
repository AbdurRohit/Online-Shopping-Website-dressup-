<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
String f_name=request.getParameter("fname");
String l_name=request.getParameter("lname");
String email=request.getParameter("email");
String contact=request.getParameter("con");
String dob=request.getParameter("bday");
String gen=request.getParameter("gender");
String addr=request.getParameter("add");
String pin=request.getParameter("pin");
String pass1=request.getParameter("p1");
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn=DriverManager.getConnection("odbc:oracle:thin:@localhost:1521:xe","rohit","0");
	 Statement st=conn.createStatement();
	 int i=st.executeUpdate("insert into userdata(fname,lname,email,contact,dob,gender,addr,pin,p1)values('"+f_name+"','"+l_name+"','"+email+"','"+contact+"','"+dob+"','"+gen+"','"+addr+"','"+pin+"','"+pass1+"')");

	 response.sendRedirect("index.html");
}
catch(Exception E){
	out.println(E);
}
 %>