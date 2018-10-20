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
        <%@include file="../WEB-INF/jspf/head.jspf" %>
    </head>
    <body>
        <header class="py-5 bg-info">
            <div class="container">
                <div class="row">
                    <div class="col-12 text-center py-5 text-white">
                        <h1>Empresas</h1>
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
                        <p class="text-muted">Lista das empresas cadastradas no sistema</p>
                    </div>
                    <div class="col-12 text-center pb-5">
                        <a href="adicionarEmpresa.jsp" class="btn btn-primary">Adicionar Empresa</a>
                    </div>
                    <div class="table-responsive pb-4">
                        <table class="text-center table table-striped table-light ">
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
                                <%
                                    for (DadosEmpresa de : DadosEmpresa.getEmpresas()) {
                                    int i = DadosEmpresa.getEmpresas().indexOf(de);
                                %>
                                <tr>
                                    <td><%=i%></td>
                                    <td><%=de.getNome()%></td>
                                    <td><%=de.getRazaoSocial()%></td>
                                    <td><%=de.getCnpj()%></td>
                                    <td><%=de.getTelefone()%></td>
                                    <td><%=de.getWebsite()%></td>
                                    <td>
                                        <a href="alterarEmpresa.jsp?i=<%=i%>" class="btn btn-success">
                                            <span class="fas fa-pencil-alt"></span>
                                        </a>
                                        <a href="excluirEmpresa.jsp?i=<%=i%>" class="btn btn-danger">                                            
                                            <span class="fas fa-trash"></span>
                                        </a>
                                    </td>
                                </tr>
                                <%}%>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </section>
        <%@include file="../WEB-INF/jspf/footer.jspf" %>
    </body>
    <%@include file="../WEB-INF/jspf/imports.jspf" %>
</html>
