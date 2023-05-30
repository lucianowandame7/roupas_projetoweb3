<%-- 
    Document   : index
    Created on : 27 de abr. de 2023, 14:28:24
    Author     : QI
--%>

<%
    if(session.getAttribute("newUserSession") != null) {
        response.sendRedirect("home.jsp");
    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>NewStyle</title>
        <link rel="stylesheet" href="css/style-index.css"/>
        <link rel="icon" href="img/icon.png"/>
   
    
    </head>
    <body>
       <main>
        <h1>NewStyle</h1>
        <form action="LoginController" method="post" id="form-login">            
 
            <img src="img/logotipo.jpg" alt="Logotipo" width="400" style="margin-bottom: 30px;"/>
            <br>
           
            
            
            <input type="text"  name="user" id="user" class="input-login" placeholder="Nome de usuário" required>
            <br><br>
           
            
           
            <input type="password" name="pass" id="pass" class="input-login" placeholder="Senha" required>
            <br><br>
           
           
            <input  type="submit" value="Entrar">
        </form>
        <main>
    </body>
</html>