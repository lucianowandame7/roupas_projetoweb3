<%-- 
    Document   : home
    Created on : 27 de abr. de 2023, 14:29:27
    Author     : QI
--%>

<%@include file="session/verify.jsp" %>
<%@page import="model.User"%>
<%   
    User userSession = (User) session.getAttribute("newUserSession");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu NewStyle</title>
         <link rel="icon" href="img/icon.png"/>
    </head>
    <body>
        <h1> NewStyle </h1>
        <hr>
        <p>
            Seja bem-vindo a nossa loja <%=
                                (userSession != null)
                                ? userSession.getUserName()
                                : "visitante"
                            %>! Aqui você pode cadastrar roupas que você quer vender e visualizar a listagem de outras pessoas!
            <br><br>
                 <img src="img/lacostec.jpg" alt="Logotipo" width="200"  />
            <br>
                            
                 <button type="button" onclick="window.location.href='session/logout.jsp'">Logout</button>
        </p>
        <main>
            <button onclick="window.location.href='cadastro.jsp'">Cadastrar Roupa</button>
            <button onclick="window.location.href='lista.jsp'">Listar</button>
        </main>
    </body>
</html>


<style>  
body {
      background-color: cyan; 
}

 main {
    
    text-align: center;
}

</style> 