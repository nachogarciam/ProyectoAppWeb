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

            String numero = (String) session.getAttribute("numero");
            String direccion = "";
        %>
        
        
        <div class="container" style="margin-top:9%;">
            <div class="jumbotron">
                <h2 style="text-align: center;">${existencias}</h2>
                <br>
                <div style="margin-left: 25%; margin-right: 30%;">
                    <div class="form-horizontal">
                        <div class="form-group form-group-hg" >
                            <label class="col-sm-2 control-label" for="formGroupInputHuge" style="width:40%;">Num. Catálogo</label>
                            <div class="col-sm-10" style="width: 57%;">
                                <input class="form-control" readonly="readonly" style="width:100%;" name="num" type="text" placeholder="Num. Catalogo" value='${juego.articulo.numCatalogo}' > 
                            </div>
                        </div>
                        <div class="form-group form-group-hg">
                            <label class="col-sm-2 control-label" for="formGroupInputHuge" style="width:40%;">Título</label>
                            <div class="col-sm-10"style="width: 57%;" >
                                <input class="form-control" readonly="readonly" style="width:100%;" name="nombre" type="text" placeholder="Titulo" value='${juego.articulo.titulo}'> 
                            </div>
                        </div>
                        <div class="form-group form-group-hg">
                            <label class="col-sm-2 control-label" for="formGroupInputHuge"style="width:40%;">Existencias actuales</label>
                            <div class="col-sm-10" style="width: 57%;">
                                <input class="form-control" readonly="readonly" style="width:100%;" name="nombre" type="text" placeholder="Existencias" value='${juego.existencia}'> 
                            </div>
                        </div>
                    </div>



                </div>
                <h6 style="font-size: 100%; text-align: center;">Para eliminar existencias, ingrese la cantidad de existencias que quiere eliminar en el recuadro de abajo</h6>
                <br>
                <form class="form-horizontal" style="margin-left: 25%; margin-right: 30%;" role="form" action="EliminarExJuego" method="get">

                    <div class="form-group form-group-hg">
                        <label class="col-sm-2 control-label" for="formGroupInputHuge"style="width:40%;">Eliminar existencias</label>
                        <div class="col-sm-10" style="width: 57%;">
                            <input class="form-control"style="width:100%;" name="cantidad" type="text" placeholder="Existencias" > 
                        </div>
                    </div>
                    <br>
                    <div style="margin-left:33%;">
                        <button type="submit" class="btn btn-primary btn-lg" style="">Agregar</button>
                        <button type="button" class="btn btn-danger btn-lg">Cancelar</button>        
                    </div>

                </form>


            </div>

        </div> 

        <script src="dist/js/vendor/jquery.min.js"></script>
        <script src="dist/js/flat-ui.min.js"></script>

    </body>
</html>
