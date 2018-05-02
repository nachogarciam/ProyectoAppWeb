<%-- 
    Document   : rentar
    Created on : 01-may-2018, 13:23:22
    Author     : user
--%>

<%@page import="java.sql.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
            session.setAttribute("accionSel", "lol");

        %>



        <div class="container" style="margin-top:9%;">
            <div class="jumbotron">
                <div style="margin-left: 25%; margin-right: 30%;">
                    <form class="form-horizontal"  role="form" action="Rentar" method="get">

                        <div class="form-group form-group-hg" >
                            <label class="col-sm-2 control-label" for="formGroupInputHuge">Num. Credencial</label>
                            <div class="col-sm-10" >
                                <input class="form-control" readonly="readonly" style="width:100%;" name="numCred" type="text" placeholder="Num. Credencial" value='${cliente.numCredencial}' > 
                            </div>
                        </div>
                        <div class="form-group form-group-hg">
                            <label class="col-sm-2 control-label" for="formGroupInputHuge">Num. Catálogo</label>
                            <div class="col-sm-10" >
                                <input class="form-control" style="width:100%;" name="numCat" type="text" placeholder="Num. Catálogo" > 
                            </div>
                        </div>
                        <div class="form-group form-group-hg">
                            <label class="col-sm-2 control-label"  for="formGroupInputHuge">Fecha</label>
                            <div class="col-sm-10">
                                <input class="form-control" readonly="readonly" style="width:100%;" name="fecha" type="text" placeholder="Fecha" value='${fecha.toString()}' > 
                            </div>
                        </div>
                        <div class="form-group form-group-hg">
                            <label class="col-sm-2 control-label"  for="formGroupInputHuge">Tiempo</label>
                            <div class="col-sm-10">
                                <input class="form-control " style="width:100%;" name="tiempo" type="text" placeholder="Tiempo" > 
                            </div>
                        </div>

                        <button type="submit" class="btn btn-primary btn-lg">Rentar</button>
                        <!--  <button type="button" class="btn btn-lg btn-warning">Reset</button> -->
                        <button type="button" class="btn btn-danger btn-lg">Cancelar</button>
                    </form>

                </div>




            </div>

        </div> 
        <script src="dist/js/vendor/jquery.min.js"></script>
        <script src="dist/js/flat-ui.min.js"></script>
    </body>
</html>
