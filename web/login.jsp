<%-- 
    Document   : index2
    Created on : 22-abr-2018, 14:33:22
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Log-in</title>
        <link href="dist/css/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Loading Flat UI -->
        <link href="dist/css/flat-ui.css" rel="stylesheet">
        <link href="docs/assets/css/demo.css" rel="stylesheet">
    </head>
    <body style="background-color: #1abc9c">
        <!--
        <form method="post" action="login">
        Email ID:<input type="text" name="email" /><br/>
        Password:<input type="text" name="pass" /><br/>
        <input type="submit" value="login" />
        </form>
        -->

        <div style="width: 100%; ">
            <h1 style="text-align: center; color: #ecf0f1;margin-top: 5%;">BRICKBUSTER</h1>
            <div style="margin-left: 38%; margin-right: 38%; margin-top: 6%;width:auto;">
                <form action="ServletLogin">
                <div class="login-form">
                    <div class="form-group">
                        <input type="text" class="form-control login-field" value="" placeholder="Enter your name" id="login-name" />
                        <label class="login-field-icon fui-user" for="login-name"></label>
                    </div>

                    <div class="form-group">
                        <input type="password" class="form-control login-field" value="" placeholder="Password" id="login-pass" />
                        <label class="login-field-icon fui-lock" for="login-pass"></label>
                    </div>

                  <a class="btn btn-primary btn-lg btn-block" href="#">Log in</a>
                    <a class="login-link" href="#">Lost your password?</a>
                </div>
                    </form>
            </div>
        </div>


    </body>
</html>
