<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%></%@page>
<!DOCTYPE html PUBLIC"-//w3c//DTD HTML 4.01 Transitional//EN 
"http://www.w3.org/TR/html4/loose/dtd">
<html>
<head>
<meta http-equive="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Insert title here</title>
        <link rel="stylesheet" href="style.css">
</head>
<body class="Relog">
    <div class="login">
        <h1>Login</h1>
    <form action="Login.jsp" method="post">
        <label>Email:</label>
            <input type="email" placeholder=" " name="email">
        <label>Password:</label>
            <input type="password" placeholder="" name="pwd">
            <input type="Submit"  value="Submit">
    </form>
    </div>

    <p class="para-a">Not have an account?<a class ="a" href="Reg.jsp">Sign Up Here</a></p>
        
    <%
        String email=request.getParameter("email");
        String pwd=request.getParameter("pwd");
        session.setAttribute("Email", email);
        session.setAttribute("Pwd",pwd);
        if(email!=null)
        {
            try
            {
               Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection(jdbc:mysql://localhost:3306/mca_project", " root","");
                PreparedStatement ps=con.prepareStatement("select email, pwd fromregitration where email=? and pwd=?");
                ps.setString(1,email);
                ps.setString(2,pwd);
                
                ResultSet rs=ps.executeQuery();
                    if(rs.next())
                        response.sendRedirect("index.jsp");
                        
                    else
                        response.sendRedirect("Login.jsp");
                
            }
            catch(ClassNotFoundException e)
            {
                e.printStackTrace();
            }
        }
    %>
        
    </body>
</html>