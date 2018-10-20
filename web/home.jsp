<%-- 
    Document   : home
    Created on : 13/10/2018, 13:31:49
    Author     : Julio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>POO Projeto 03</title>
        <%@include file="WEB-INF/jspf/head.jspf" %>
    </head>
    <body>
        <header class="py-5 bg-info">
            <div class="container">
                <div class="row">
                    <div class="col-12 text-center py-5 text-white">
                        <h1>Bem-vindo</h1>
                    </div>
                </div>
            </div>
        </header>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <section class="py-5">
            <div class="container">
                <div class="row">
                    <div class="col-12 text-center">
                        <p class="text-muted h3">Link para o repositório <span class="fab fa-github"></span></p>
                        <div class="h6 pt-2 pb-4">
                            <a href="https://github.com/j-bittenbinder/Projeto03-POO" target="_blank">https://github.com/j-bittenbinder/Projeto03-POO</a>
                        </div>
                    </div>
                    <div class="col-12 text-center">
                        <p class="text-muted h3">Integrantes do grupo</p>
                        <div class="h5 pt-3">
                            <p>Guilherme Souza</p>
                            <p>Julio Bittenbinder</p>
                            <p>Renan Lorenzetti</p>
                            <p>Mateus Vidal Marinho</p>
                            <p>Mário César Lanes Júnior</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <%@include file="WEB-INF/jspf/footer.jspf" %>
    </body>
    <%@include file="WEB-INF/jspf/imports.jspf" %>
</html>
