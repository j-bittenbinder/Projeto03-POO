<%-- 
    Document   : veiculos
    Created on : 13/10/2018, 13:34:27
    Author     : Julio
--%>

<%@page import="br.com.fatecpg.web.DadosVeiculo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Veiculos</title>
        <%@include file="../WEB-INF/jspf/head.jspf" %>
    </head>
    <body>
        <header class="py-5 bg-info">
            <div class="container">
                <div class="row">
                    <div class="col-12 text-center py-5 text-white">
                        <h1>Veículos</h1>
                        <p>Projeto POO</p>
                    </div>
                </div>
            </div>
        </header>
        <%@include file="../WEB-INF/jspf/menu.jspf" %>
        <section class="py-5">
            <div class="container">
                <div class="row">
                    <div class="col-12 text-center ">
                        <p class="text-muted">Lista dos veículos cadastrados no sistema</p>
                    </div>
                    <div class="col-12 text-center pb-5">
                        <a class="btn btn-primary" href="adicionarVeiculo.jsp">Adicionar Veículo</a>
                    </div>
                    <div class="table-responsive pb-4">
                        <table class="text-center table table-striped table-light">
                            <thead class="thead-dark ">
                                <tr>
                                    <th>ID</th>
                                    <th>Placa</th>
                                    <th>Marca</th>
                                    <th>Modelo</th>
                                    <th>Cor</th>
                                    <th>Opções</th>
                                </tr>
                            </thead>
                            <%
                                for (DadosVeiculo dv : DadosVeiculo.getVeiculos()) {
                                int i = DadosVeiculo.getVeiculos().indexOf(dv);
                            %>
                            <tr>
                                <td><%=i%></td>
                                <td><%=dv.getPlaca()%></td>
                                <td><%=dv.getMarca()%></td>
                                <td><%=dv.getModelo()%></td>
                                <td><%=dv.getCor()%></td>
                                <td>
                                    <a class="btn btn-success" href="alterarVeiculos.jsp?i=<%=i%>">
                                        <span class="fas fa-pencil-alt"></span>
                                    </a>
                                    <a class="btn btn-danger" href="excluirVeiculos.jsp?i=<%=i%>">
                                        <span class="fas fa-trash"></span>
                                    </a>
                                </td>
                            </tr>
                            <%}%>
                        </table>
                    </div>
                </div>
            </div>
        </section>
        <%@include file="../WEB-INF/jspf/footer.jspf" %>
    </body>
    <%@include file="../WEB-INF/jspf/imports.jspf" %>
</html>
