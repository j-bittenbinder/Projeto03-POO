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
        <%@include file="../WEB-INF/jspf/imports.jspf" %>
    </head>
    <body>
        <h1>Lista Veículos</h1>
        <div class="container">
            <div class="row">
                <div class="col">
                    <table border="1" class="text-center table table-striped table-light">
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
                        <%for (DadosVeiculo dv : DadosVeiculo.getVeiculos()) {%>
                        <%int i = DadosVeiculo.getVeiculos().indexOf(dv);%>
                        <tr>
                            <td><%=i%></td>
                            <td><%=dv.getPlaca()%></td>
                            <td><%=dv.getMarca()%></td>
                            <td><%=dv.getModelo()%></td>
                            <td><%=dv.getCor()%></td>
                            <td>
                                <a href="alterarVeiculos.jsp?i=<%=i%>" ><button class="btn btn-primary">Alterar</button></a>
                                <a href="excluirVeiculos.jsp?i=<%=i%>"><button class="btn btn-danger">Excluir</button></a>
                            </td>
                        </tr>
                        <%}%>
                    </table>
                    <div class="text-center">
                        <a href="adicionarVeiculo.jsp" ><button class="btn btn-success">Inserir</button></a>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
