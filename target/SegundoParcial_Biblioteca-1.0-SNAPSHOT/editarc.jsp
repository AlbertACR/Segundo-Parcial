<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.emergentes.modelo.Categorias"%>
<%
    Categorias cat =(Categorias) request.getAttribute("cat");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Nuevo Libro</h1>
        <form action="MainController" method="post">
            <input type="hidden" name="id" value="${cat.id}">
            <table>
                
                <tr>
                    <td>Categoria</td>
                    <td>
                        <input type="text" name="categoria"  value="${cat.categoria}">
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <input type="submit"  value="Enviar">
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
