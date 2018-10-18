<%-- 
    Document   : listarEmpresas
    Created on : 13/10/2018, 13:34:02
    Author     : Julio
--%>

<%@page import="br.com.fatecpg.web.DadosEmpresa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Empresas</title>
        <%@include file="../WEB-INF/jspf/imports.jspf" %>
    </head>
    <body>
        <div class="container">
            <h1>Empresas</h1>
            <div class="table-responsive">
                <table border="1" class="text-center table table-striped table-light">
                    <thead class="thead-dark">
                        <tr>
                            <th>ID</th>
                            <th>Nome</th>
                            <th>Razão Social</th>
                            <th>CNPJ</th>
                            <th>Telefone</th>
                            <th>Website</th>
                            <th>Opções</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%for (DadosEmpresa de : DadosEmpresa.getEmpresas()) {%>
                        <%int i = DadosEmpresa.getEmpresas().indexOf(de);%>
                        <tr>
                            <td><%=i%></td>
                            <td><%=de.getNome()%></td>
                            <td><%=de.getRazaoSocial()%></td>
                            <td><%=de.getCnpj()%></td>
                            <td><%=de.getTelefone()%></td>
                            <td><%=de.getWebsite()%></td>
                            <td>
                                <a href="" class="btn btn-primary">Alterar</a>
                                <a href="" class="btn btn-danger">Excluir</a>
                            </td>
                        </tr>
                        <%}%>
                    </tbody>
                </table>
            </div>
            <div class="text-center">
                <a href="adicionarEmpresa.jsp" class="btn btn-success">Adicionar</a>
            </div>
        </div>
    </body>
</html>
