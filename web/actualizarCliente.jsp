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
                            <label class="col-sm-2 control-label" for="formGroupInputHuge">Num. Credencial</label>
                            <div class="col-sm-10" >
                                <input class="form-control" readonly="readonly" style="width:100%;" name="numC" type="text" placeholder="Num. Credencial" value='${cliente.numCredencial}' > 
                            </div>
                        </div>
                        <div class="form-group form-group-hg">
                            <label class="col-sm-2 control-label" for="formGroupInputHuge">Nombre</label>
                            <div class="col-sm-10" >
                                <input class="form-control" style="width:100%;" name="nombre" type="text" placeholder="Nombre" value='${cliente.nombre}'> 
                            </div>
                        </div>
                        <div class="form-group form-group-hg">
                            <label class="col-sm-2 control-label"  for="formGroupInputHuge">Dirección</label>
                            <div class="col-sm-10">
                                <input class="form-control" style="width:100%;" name="direccion" type="text" placeholder="Dirección" value='${cliente.direccion}'> 
                            </div>
                        </div>
                        <div class="form-group form-group-hg">
                            <label class="col-sm-2 control-label"  for="formGroupInputHuge">Teléfono</label>
                            <div class="col-sm-10">
                                <input class="form-control " style="width:100%;" name="telefono" type="text" placeholder="Teléfono" value='${cliente.telefono}'> 
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
