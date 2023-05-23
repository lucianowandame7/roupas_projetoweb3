<%-- 
    Document   : cadastro
    Created on : 21 de mai. de 2023, 15:02:45
    Author     : Luciano
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro da roupa</title>
        <link rel="icon" href="img/icon.png"/>
    </head>
    <body>
        <h1>Cadastrar a Roupa</h1>
        <hr>
        <h2>Informe aqui o estilo de roupa que você quer cadastrar!</h2>
        <form action="RoupaController" method="post">
            <input type="text" name="tipo" placeholder="Tipo de Roupa(ex: camisa, calça...)" required>
            <br><br>
            
            <input type="text" name="cor" placeholder="Diga a cor" required>
            <br><br>
            
            <select name="marca" required>
                <option value="">Selecione uma marca</option>
                <option value="Nike">Nike</option>
                <option value="Adidas">Adidas</option>
                <option value="Lacoste">Lacoste</option>
                <option value="Hugo Boss">Hugo Boss</option>
                <option value="Puma">Puma</option>
            </select>
            
            <br><br>
            
            <select name="material" required>
                <option value="">Selecione o material</option>
                <option value="Algodão">Algodão</option>
                <option value="Lã">Lã</option>
                <option value="Couro">Couro</option>
                <option value="Pano"> Pano</option>
                <option value="Tencel">Tencel</option>
            </select>
            <br><br>
            
            <input type="submit" value="Enviar Resposta!">
            
        </form>
        
        <br><hr>
        <a href="home.jsp">Página inicial</a>
        <br><br>
        
            
        <img src="img/calçaadidas.jpg" alt="Logotipo" width="200"  />
         <img src="img/niket.jpg" alt="Logotipo" width="200"  />
         <img src="img/nikecamisa.jpg" alt="Logotipo" width="200"  />
       
    </body>
</html>

<style>   
    body {
       background-color: cyan; 
    }

</style>