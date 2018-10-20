<%-- 
    Document   : adicionarVeiculos
    Created on : 17/10/2018, 11:45:21
    Author     : oper1.goliveira
--%>
<%@page import="br.com.fatecpg.web.DadosVeiculo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Adicionar Veiculos</title>
        <%@include file="../WEB-INF/jspf/head.jspf" %>
    </head>
    <body>
        <header class="py-5 bg-info">
            <div class="container">
                <div class="row">
                    <div class="col-12 text-center py-5 text-white">
                        <h1>Adicionar Veículos</h1>
                        <p>Projeto POO</p>
                    </div>
                </div>
            </div>
        </header>
        <%@include file="../WEB-INF/jspf/menu.jspf" %>
        <%
                if (request.getParameter("cadastrar") != null) {
                    String placa = request.getParameter("placa").toUpperCase();
                    String marca = request.getParameter("marca");
                    String modelo = request.getParameter("modelo");
                    String cor = request.getParameter("cor");
                    DadosVeiculo v = new DadosVeiculo();
                    v.setVeiculo(placa, marca, modelo, cor);
                    DadosVeiculo.getVeiculos().add(v);
                    response.sendRedirect("listarVeiculos.jsp");
                }
            %>
        <section class="py-5">
            <div class="container">
                <div class="row">
                    <div class="col-12 text-center pb-4">
                        <p class="text-muted">Realize o cadastro de um novo veículo com o formulário abaixo</p>
                    </div>
                    <div class="col-lg-6 col-md-10 m-auto p-5 border bg-light">
                        <form>
                            <div class="form-group">
                                <label class="form-label">Placa:</label>
                                <input type="text" name="placa" class="form-control" placeholder="Digite a placa (ABC-1234)" pattern="[A-Za-z]{3}-[0-9]{4}">
                            </div>
                            <div class="form-group">
                                <label class="form-label">Marca:</label>
                                <input type="text" name="marca" class="form-control" placeholder="Digite a marca">
                            </div>
                            <div class="form-group ">
                                <label class="form-label">Modelo:</label>
                                <input type="text" name="modelo" class="form-control" placeholder="Digite o modelo">
                            </div>
                            <div class="form-group">
                                <label class="form-label">Cor:</label>
                                <input type="text" name="cor" class="form-control" placeholder="Digite a cor">
                            </div>
                            <div class="text-center pt-4">
                                <a href="listarVeiculos.jsp" class="btn btn-primary">Voltar</a>
                                <button type="submit" class="btn btn-success" name="cadastrar">Cadastrar</button>     
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>
        <%@include file="../WEB-INF/jspf/footer.jspf" %>
    </body>
    <%@include file="../WEB-INF/jspf/imports.jspf" %>
</html>
