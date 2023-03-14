<%@page import="oracle.jdbc.util.Login" %>
    <%@page import="org.apache.jasper.tagplugins.jstl.core.Out" %>
        <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
            <%@ page import="java.sql.*" %>
                <% %>
                    <html>

                    <head>
                        <title>Online Fashion Store | Dress Up</title>
                        <link rel="icon" type="image/png" href="../img/bowtie.png" />
                        <link rel="stylesheet"
                            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" />
                        <link rel="stylesheet" href="../css/index.css" />
                        <link rel="stylesheet" href="../css/common.css" />
                        <link rel="stylesheet" href="../css/footer.css" />
                        <link rel="stylesheet" href="../css/profile.css" />
                    </head>

                    <body>



                        <table border="1" cellspacing="1" cellpading="5">
                            <tr>
                                <th>CART PRODUCTS </th>


                            </tr>

                            <% String uname=(String)session.getAttribute("user"); out.print("Welcome: "+uname);%>
<br>
<%try{
	Class.forName(" oracle.jdbc.driver.OracleDriver"); Connection
                                conn=DriverManager.getConnection("odbc:oracle:thin:@localhost:1521:xe","rohit","0");
                                PreparedStatement st=conn.prepareStatement("select name from product where pid in(select
                                pid from cart where email=?)"); st.setString(1,uname); ResultSet rs=st.executeQuery();
                                while(rs.next()){ %>
                                <tr>
                                    <td>
                                        <%=rs.getString("name")%>
                                    </td>

                                </tr>

                                <% } }catch(Exception e){ out.println("Connection not done"); } %>
                        </table>
                        <a href="Logout.jsp"><input type="submit" value="Logout"></a>



                        <footer class="footer">
                            <div class="container">
                                <div class="row">
                                    <div class="footer-col">
                                        <h3>Navigation Links</h3>
                                        <ul>
                                            <li><a href="/index.html">Home</a></li>
                                            <li><a href="T-shirt.html">Mens T-Shirt</a></li>
                                            <li><a href="ladies_tshirt.html">Womens T-Shirt</a></li>
                                            <li><a href="about.html">About us</a></li>
                                        </ul>
                                    </div>
                                    <div class="footer-col">
                                        <h3>Contact Us</h3>
                                        <span class="span">Behind Urbana Complex Near Ruby General Hospital, Nazirabad
                                            Rd,
                                            Uchhepota. <br> Kolkata - 700150</span>
                                    </div>
                                    <div class="footer-col">
                                        <h3>Customer Support</h3>
                                        <span class="span">
                                            Phone Number: +91 7278953135 <br>
                                            Phone Number: +91 8617708968</span>
                                    </div>
                                    <div class="footer-col">
                                        <h3>follow us</h3>
                                        <ul>
                                            <li class="ico"><a
                                                    href="https://www.facebook.com/profile.php?id=100008921343239"><i
                                                        class="fa-brands fa-facebook"></i></a></li>
                                            <li class="ico"><a href=""><i class="fa-brands fa-twitter"></i></a></li>
                                            <li class="ico"><a href=""><i class="fa-brands fa-square-instagram"></i></a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </footer>
                    </body>

                    </html>