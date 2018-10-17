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
        <%@include file="../WEB-INF/jspf/imports.jspf" %>
    </head>
    <body>
        <h1>Adicionar Veiculos</h1>
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
        <div class="container">            
            <div class="row">
                <div class="col-6 m-auto p-5 border bg-light">
                    <form>
                        <div class="form-group row">
                            <label class="col-2 col-form-label">PLACA:</label>
                            <div class="col-10">
                                <input type="text" name="placa" class="form-control" placeholder="Digite a placa (ABC-1234)" pattern="[A-Za-z]{3}-[0-9]{4}">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-2 col-form-label">MARCA:</label>
                            <div class="col-10">
                                <input type="text" name="marca" class="form-control" placeholder="Digite a marca">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-2 col-form-label">MODELO:</label>
                            <div class="col-10">
                                <input type="text" name="modelo" class="form-control" placeholder="Digite o modelo">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-2 col-form-label">COR:</label>
                            <div class="col-10">
                                <input type="text" name="cor" class="form-control" placeholder="Digite a cor">
                            </div>
                        </div>
                        <div class="text-center">
                        <input type="submit" class="btn btn-success" name="cadastrar" value="Cadastrar"/>     
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
