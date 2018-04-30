<%--
    despliegaCanciones.jsp
    
    Esta página JSP despliega una tabla con la lista de canciones del catálogo 
    de canciones. Forma parte de la aplicación Web AmanteMusicaWeb versión JSP.
--%>

<!DOCTYPE html>

<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<%@ page import="objetosNegocio.*" %>

<html>
    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" type="text/css" href="css/estilos.css" />
        <title>BeeGames</title>
        <script>
            function clickear(id) {
                if (document.getElementById(id).checked == true) {
                    document.getElementById(id).checked = false;
                } else {
                    document.getElementById(id).checked = true;

                }


            }
        </script>

    </head>
    <!--Cargar el navbar-->
    <%@include file="jspf/encabezado.jspf"%>

    <body>
        <%
            HttpSession sesion = request.getSession();
            String usuario = null;
            usuario = (String) sesion.getAttribute("user");
            if (usuario == null) {
                response.sendRedirect("login.jsp");
            }
        %>
        <%-- Despliega los datos de todas los juegos. Los datos
             se encuentran en el bean listaJuegos guardados en
             el objeto request por los servlets obtenCanciones
             obtenCancionesGenero u obtenCancionesPeriodo. --%>

        <div class="container" style="margin-top:9%;">
            <div class="jumbotron">

                <table class="table3" >

                    <%-- Título de la tabla --%>
                    <h3 style="text-align: center;">
                        ${listaClientes.tituloTabla}
                    </h3>

                    <tr>
                        <%-- Títulos de las columnas --%>
                        <th style="border-top-left-radius: 10px; width: 1%; background-color: #34495e;">Selección</th>
                        <th style="width:20%;">Num. Credencial</th>
                        <th>Nombre</th>
                        <th>Dirección</th>
                        <th style=" border-top-right-radius: 10px;">Teléfono</th>
                    </tr>
                    <%!
                        int i = 0;
                    %>
                    <c:forEach items="${listaClientes.lista}" var="cliente"
                               varStatus="fila">
                        <tr onclick="clickear(<%=i%>)">
                            <td >
                                <label class="checkbox checkbox-inline" for="checkbox5c">
                                    <input type="checkbox" data-toggle="checkbox" id="<%=i%>" value="" class="custom-checkbox" value="${cliente.numCredencial}" name="<%=i%>"><span class="icons"><span class="icon-unchecked"></span><span class="icon-checked"></span></span>
                                </label>
                            </td>
                            <td>${cliente.numCredencial}</td>
                            <td>${cliente.nombre}</td>
                            <td>${cliente.direccion}</td>
                            <td>${cliente.telefono}</td>
                        </tr>
                        <%
                            i++;
                        %>
                    </c:forEach>
                </table>
            </div>
        </div>
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="dist/js/vendor/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="dist/js/flat-ui.min.js"></script>
        <script>
                            clientsss.style.color = "#1abc9c";
                            client1.style.borderTopColor = "#1abc9c";
        </script>
    </body>
</html>
