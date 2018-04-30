<%-- 
    Document   : index
    Created on : 22-abr-2018, 14:47:13
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/estilos.css" rel="stylesheet" type="text/css"/>
        <link href="dist/css/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="dist/css/flat-ui.css" rel="stylesheet">
        <title>Videocentro</title>
        <!--Cargar el navbar-->
        <%@include file="jspf/encabezado.jspf"%>

    </head>
    <body>
        <%
            HttpSession sesion = request.getSession();
            String usuario = null;
            usuario = (String) sesion.getAttribute("user");
            if (usuario == null) {
                response.sendRedirect("login.jsp");
            }
        %>



        <script src="dist/js/vendor/jquery.min.js"></script>
        <script src="dist/js/flat-ui.min.js"></script>

    </body>
</html>
