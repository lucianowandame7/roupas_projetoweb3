<%-- 
    Document   : lista
    Created on : 21 de mai. de 2023, 16:36:15
    Author     : Luciano
--%>
<%@page import="model.RoupaDAO"%>
<%@page import="model.Roupa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Roupas</title>
    </head>
    <body>
        <h1>Listar</h1>
        <table>
            <thead>
                <th>CODIGO</th>
                <th>TIPO</th>
                <th>COR</th>
                <th>MARCA</th>
                <th>MATERIAL</th>
                <th></th>
                <th></th>
            </thead>
            <tbody>
              <%
                    RoupaDAO tdao = new RoupaDAO();
                    for(Roupa item : tdao.listRoupa()){
                    %>
                <tr>
                    <td><%= item.getCodRoupa()%></td>
                    <td><%= item.getTipo()%></td>
                    <td><%= item.getCor()%></td>
                    <td><%= item.getMarca()%></td>
                    <td><%= item.getMaterial()%></td>
                    <td>
                        <a href="UpdateRoupa?cod=<%= item.getCodRoupa() %>">✏</a>
                    </td>
                    <td>
                        <a onclick="confirmaDelete(<%= item.getCodRoupa() %>, '<%= item.getTipo()%>')">🗑</a>
                    </td>
                </tr>
              <%
                    }
                    %>
            </tbody>
            
            
        </table>
        
        <br><hr>
        <a href="home.jsp">Página inicial</a>
        
        <script>
                function confirmaDelete(cod, tipo) {
                    if(confirm("Deseja realmente excluir " + tipo + "?")) {
                       window.location.replace("DeleteTransporte?cod=" + cod); 
                    } else {
                       alert("Exclusão cancelada!");
                    }
                }
           </script>
    </body>
</html>