<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http.equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <%
        try{
            String s1=request.getParameter("email");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con= DriverManager.getConnection("jdbc.mysql://localhost:3306/mca_project","root","");
            
            Statement st=con.createStatement();
            
            st.executeUpdate("insert into registration values( ' " + request.getParameter("fn")+ " ' , ' " + request.getParameter("ln")+ " ' , ' " + s1 + " ' , ' " + request.getParameter("pwd")+" ')");
            
            st.close();
            
            response.sendRedirect("Login.jsp");
        }
        
        catch(Exception e)
        {
            out.println(e);
        }
%>
    </body>
</html>