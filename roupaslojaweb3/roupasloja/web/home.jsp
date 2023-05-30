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
      <link rel="stylesheet" href="css/style.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu NewStyle</title>
         <link rel="icon" href="img/icon.png"/>
    </head>
    <body>
        <h1> NewStyle </h1>
        <button type="button" onclick="window.location.href='session/logout.jsp'" id="btn-logout">Logout</button>
        <hr>
        <p>
            Seja bem-vindo a nossa loja novamente <%=
                                (userSession != null)
                                ? userSession.getUserName()
                                : "visitante"
                            %>! Cadastre as roupas que estão em estoque no botão "Cadastrar Roupa".
            <br><br>
            Para visualizar, editar ou excluir a lista dos produtos cadastrados, clique no botão "Lista".
        </p>     
            <main>
                <img src="img/lacostec.jpg" alt="Logotipo" width="200" />
                <br><br>

                <button onclick="window.location.href='cadastro.jsp'" class="btn-options">Cadastrar Roupa</button>
                <button onclick="window.location.href='lista.jsp'" class="btn-options">Lista</button>
            </main>
    </body>
</html>


