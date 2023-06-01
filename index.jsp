<%
   if(session.getAttribute("Email")==null)
   {
        response.sendRedirect("Login.jsp");
   }
    <%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
        
    <!DOCTYPE html PUBLIC "-//w3c//DTD HTML 4.01 Transitional//EN "
    "http://www.w3.org/TR/html4/loose.dtd">
    <html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
            <title>The House Of Book</title>
            <link rel="stylesheet" href="Style1.css">
                <script src="http://kit.fontawesome.com/a076d05399.js">
                </script>
            <link rel="stylesheet"
                href="https://cdnjs.Cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
                integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcVLLD9aMhZd13uQjoXtWKNosOWaZqXgel0g==" crossorigin="anonymous"
                referrerpolicy="no-referrer"/>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet">
                <script src="https://cdn.jsdeliver.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>
            <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Audiowide">
    </head>
    <body>
        <div>
                <img class"Bg1" src="Bg1.jpg">
        </div>

        <div class="menu_bar">
        <h1 class="logo">The House Of Book</h1>
            <ul>
                <li><a href="#">Home</a></li>
                <li><a href="#">Order Book<i class="fas fa-caret-down"></i></a>
                    <div class="dropdown_menu">
            <ul>
            <li><a href="history.jsp">History & Novel</a></li>
            <li><a href="Comics.jsp">Comics & Horror</a></li>
            <li><a href="Comp.jsp">Computer Lang.</a></li>
            </ul>
            </div>
            </li>
        <li><a href="#">Education<i class="fas fa-caret-down"></i></a>
        <div class ="dropdoen_menu">
            <ul>
            <li><a href="Mca.jsp">MCA</a></li>
            <li><a href="Bca.jsp">BCA</a></li>
            </ul>
        </div>
        </li>
        <li class="q1"><a href="#"><i class='fas fa-shopping-cart' style='font-size:22px'></i></a></li>
        <li><a class="a1"><%=session.getAttribute("Email") %> <i class="fas fa-caret-down"></li>
        <div class="dropdown_menu">
            <ul>
            <li><a href="Login.jsp">Logout</a></li>
            </ul>
            </div>
            </li>
        </ul>
    </div>

            <br><br><br><br>
                
        <div class="sea">
            <div class"sch-bx">
                <input type="text" class"sch1" placeholder="What are you looking for?"/>
                    <button type="Submit" class="sch1-btn">
                    <i class="fa fa-search"></i>
                </button>
            </div>
        </div>

    <br><br><br><br>
                        
                <span class="container">
            <div id="demo" class="carousel slide" data-bs-ride="carousel">
                
                <div class="carousel-indicators">
                    <button type="button" data-bs-target="#demo" 