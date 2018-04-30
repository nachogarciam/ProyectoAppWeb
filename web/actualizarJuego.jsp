<%-- 
    Document   : ActualizarCancion
    Created on : 28-abr-2018, 22:26:58
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actualizar Juego</title>
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
        %>
        <div class="container" style="margin-top:9%;">
            <div class="jumbotron">
                <div style="margin-left: 25%; margin-right: 30%;">
                    <form class="form-horizontal"  role="form" action="ActualizarJuego" method="get">

                        <div class="form-group form-group-hg" >
                            <label class="col-sm-2 control-label" for="formGroupInputHuge">Num. Catálogo</label>
                            <div class="col-sm-10" >
                                <input class="form-control" readonly="readonly" style="width:100%;" name="num" type="text" placeholder="Num. Catálogo" value='${juego.numCatalogo}' > 
                            </div>
                        </div>
                        <div class="form-group form-group-hg">
                            <label class="col-sm-2 control-label" for="formGroupInputHuge">Título</label>
                            <div class="col-sm-10" >
                                <input class="form-control" style="width:100%;" name="titulo" type="text" placeholder="Título" value='${juego.titulo}'> 
                            </div>
                        </div>
                        <div class="form-group form-group-hg">
                            <label class="col-sm-2 control-label"  for="formGroupInputHuge">Género</label>
                            <div class="col-sm-10">
                                <input class="form-control" style="width:100%;" name="genero" type="text" placeholder="Género" value='${juego.genero}'> 
                            </div>
                        </div>
                        <div class="form-group form-group-hg">
                            <label class="col-sm-2 control-label"  for="formGroupInputHuge">Clasificación</label>
                            <div class="col-sm-10">
                                <input class="form-control " style="width:100%;" name="clasificacion" type="text" placeholder="Clasificación" value='${juego.clasificacion}'> 
                            </div>
                        </div>
                        <div class="form-group form-group-hg">
                            <label class="col-sm-2 control-label"  for="formGroupInputHuge">Consola</label>
                            <div class="col-sm-10">
                                <input class="form-control" style="width:100%;" name="consola" type="text" placeholder="Consola" value='${juego.consola}'> 
                            </div>
                        </div>
                        <div class="form-group form-group-hg">
                            <label class="col-sm-2 control-label" for="formGroupInputHuge">Fabricante</label>
                            <div class="col-sm-10">
                                <input class="form-control" style="width:100%;" name="fabricante" type="text" placeholder="Fabricante" value='${juego.fabricante}' > 
                            </div>
                        </div>
                        <div class="form-group form-group-hg">
                            <label class="col-sm-2 control-label" for="formGroupInputHuge">Versión</label>
                            <div class="col-sm-10">
                                <input class="form-control lel" style="width:100%;" name="version" type="text" placeholder="Versión" value='${juego.version}'> 
                            </div>
                        </div>

                        <button type="submit" class="btn btn-primary btn-lg">Actualizar</button>
                        <button type="button" class="btn btn-lg btn-warning">Reset</button>
                        <button type="button" class="btn btn-danger btn-lg">Cancelar</button>
                    </form>

                </div>




            </div>

        </div> 
    </div>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="dist/js/vendor/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="dist/js/flat-ui.min.js"></script>
</body>
</html>
