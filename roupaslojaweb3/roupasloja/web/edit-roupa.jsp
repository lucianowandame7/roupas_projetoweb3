
<%@page import="model.Roupa" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    Roupa tr = (Roupa)request.getAttribute("Roupa");
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edição da lista</title>
        <link rel="stylesheet" href="css/style-edicao.css"/>
         <link rel="icon" href="img/icon.png"/>
    </head>
    <body>
        <h1>Editar</h1>
        <hr>
        
        <form action="RoupaController" method="post" id="form">
            <input type="text" name="cod" class="edicao-cod" value="<%= tr.getCodRoupa() %>" readonly>
            <br><br>
            
            <input type="text" name="tipo" class="edicao-tipo" value="<%= tr.getTipo() %>" placeholder="Tipo de Roupa" required>
            <br><br>
            
            <input type="text" name="cor" class="edicao-cor" value="<%= tr.getCor()%>" placeholder="Cor" required>
            <br><br>
            
            <select name="marca" class="edicao-marca" required>
                <option value="<%= tr.getMarca()%>"><%= tr.getMarca()%></option>
                <option value="Nike">Nike</option>
                <option value="Adidas">Adidas</option>
                <option value="Lacoste">Lacoste</option>
                <option value="Hugo Boss">Hugo Boss</option>
                <option value="Puma">Puma</option>
            </select>
            <br><br>
           
            <select name="material" class="edicao-material" required>
                <option value="<%= tr.getMaterial()%>"><%= tr.getMaterial()%></option>
                <option value="Algodão">Algodão</option>
                <option value="Lã">Lã</option>
                <option value="Couro">Couro</option>
                <option value="Pano"> Pano</option>
                <option value="Tencel">Tencel</option>
            </select>
             <br><br>
                     
            
             <input type="submit" class="btn-atualizar" value="Atualizar">
             <input type="reset" class="btn-restaurar" value="Restaurar">
            
        </form>
        
        <br><hr>
        <a href="home.jsp" class="link" >Página inicial</a>
        
        <script>
                var form = document.getElementById("form");
                
                form.addEventListener("submit", function(e){
                    if(!confirm("Deseja realmente atualizar?")) {
                        e.preventDefault();
                        alert("Atualização cancelada!");
                        window.location.href="lista.jsp";
                    }
                });
           </script>
        
    </body>
</html>