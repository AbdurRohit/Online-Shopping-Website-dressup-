<%@page import="oracle.jdbc.util.Login" %>
    <%@page import="org.apache.jasper.tagplugins.jstl.core.Out" %>
        <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
            <%@ page import="java.sql.*" %>
                <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
                <!DOCTYPE html>
                <html lang="eng">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">

                <head>
                    <title>Online Fashion Store | Dress Up</title>
                    <link rel="icon" type="image/png" href="../img/bowtie.png" />
                    <link rel="stylesheet"
                        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css" />
                    <link rel="stylesheet" href="../css/index.css" />
                    <link rel="stylesheet" href="../css/common.css" />
                    <link rel="stylesheet" href="../css/login.css">
                    <link rel="stylesheet" href="../css/footer.css" />
                    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
                    <script>
                        function validateemail() {
                            var x = document.log.email.value;
                            var atposition = x.indexOf("@");
                            var dotposition = x.lastIndexOf(".");
                            if (atposition < 1 || dotposition < atposition + 2 || dotposition + 2 >= x.length) {
                                swal("Invalid E-mail ID", "", "warning");
                                return false;
                            }
                        }
                    </script>
                </head>

                <body>

                    <header>
                        <a href="/index.html"><img class="logo" src="/img/log.png" alt="Logo"></a>
                    </header>
                    <div class="login">
                        <h1>Sign-In</h1>
                        <form action="Login.jsp" method="post" class="form" name="log"
                            onsubmit="return validateemail()">
                            <div class="txt">
                                <input type="text" name="email" value="">
                                <div class="line"></div>
                                <label>Email-ID</label>
                            </div>
                            <div class="txt">
                                <input type="password" name="pass" value="" required autocomplete="off">
                                <div class="line"></div>
                                <label>Password</label>
                            </div>
                            <div class="pass">Forgot Password?<a></a></div>
                            <input type="submit" value="Sign-In">
                        </form>
                        <br><br>
                    </div>
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
                                    <span class="span">Behind Urbana Complex Near Ruby General Hospital, Nazirabad Rd,
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
                <% String email=request.getParameter("email"); String pass1=request.getParameter("pass");
                    out.println("Email="+email);
try{
	session.setAttribute(" user",email); Class.forName("oracle.jdbc.driver.OracleDriver"); 
    Connection conn=DriverManager.getConnection("odbc:oracle:thin:@localhost:1521:xe","rohit","0");
    PreparedStatement st=conn.prepareStatement("select email,p1 from userdata where email=? and p1=?");
    st.setString(1,email); st.setString(2,pass1); ResultSet rs=st.executeQuery(); //out.println(st);
    if(rs.next()) { 
                    RequestDispatcher rd=request.getRequestDispatcher("index.html");
                    rd.forward(request,response); 
                } 
        else { 
            out.println("<center><b>Invalid</b><br><a href=login.html>Back to login</a></center>");
            }

    }
    catch(Exception E){}
                    %>