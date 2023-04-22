<%@page import="Animales.*" import="Controlador.*" import="java.util.ArrayList" import="java.util.Iterator" contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de animales</title>
        <link href="index.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%
            //llamado las varibles enviadas desde el servlet
            String list = (String) request.getSession().getAttribute("lista");
            double promedio = (Double) request.getSession().getAttribute("promedio");
            int caninos = (Integer) request.getSession().getAttribute("caninos");
            int felinos = (Integer) request.getSession().getAttribute("felinos");
        %>
        
        <h2>Datos animales</h2><br>
        <table>
            <tr>
                <th>Tipo de aninal</th>
                <th>Nombre</th>
                <th>Raza</th>
                <th>Color</th>
                <th>Edad</th>
                <th>toxoplasmosis</th>
                <th>Nivel de entrenamiento</th>
 
            </tr>
            <%= list%>
        </table>
        <table>
            <tr>
                <th>Promedio edades</th>
                <th>Total caninos</th>
                <th>Total felinos</th>
            </tr>
            <tr>
                <td><%= promedio%></td>
                <td><%= caninos%></td>
                <td><%= felinos%></td>
            </tr>
        </table>
        
        <form method="POST" action="index.html">
            <button type="submit">Registrar un nuevo animal</button>
        </form>
        <form method="POST" action="miServlet">
            <label for="nombre">Eliminar mascota(Numero de fila)</label>
            <input type="number" type="submit" name="btn1" placeholder="Ingrese texto aquí">
             <button type="submit">Eliminar</button>
        </form>
        
    </body>
</html>
