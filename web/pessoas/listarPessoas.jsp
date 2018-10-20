<%-- 
    Document   : pessoas
    Created on : 19/10/2018, 14:34:27
    Author     : Renan
--%>

<%@page import="br.com.fatecpg.web.DadosPessoa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pessoas</title>
        <%@include file="../WEB-INF/jspf/head.jspf" %>
    </head>
    <body>
        <header class="py-5 bg-info">
            <div class="container">
                <div class="row">
                    <div class="col-12 text-center py-5 text-white">
                        <h1>Pessoas</h1>
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
                        <p class="text-muted">Lista das pessoas cadastradas no sistema</p>
                    </div>
                    <div class="col-12 text-center pb-5">
                        <a class="btn btn-primary" href="adicionarPessoas.jsp">Adicionar Pessoa</a>
                    </div>
                    <div class="table-responsive pb-4">
                        <table class="text-center table table-striped table-light">
                            <thead class="thead-dark ">
                                <tr>
                                    <th>ID</th>
                                    <th>Nome</th>
                                    <th>Telefone</th>
                                    <th>Email</th>
                                    <th>CPF</th>
                                    <th>Opções</th>
                                </tr>
                            </thead>
                            <%
                                for (DadosPessoa dv : DadosPessoa.getPessoas()) {
                                int i = DadosPessoa.getPessoas().indexOf(dv);
                            %>
                            <tr>
                                <td><%=i%></td>
                                <td><%=dv.getNome()%></td>
                                <td><%=dv.getTelefone()%></td>
                                <td><%=dv.getEmail()%></td>
                                <td><%=dv.getCpf()%></td>
                                <td>
                                    <a class="btn btn-success" href="alterarPessoas.jsp?i=<%=i%>">
                                        <span class="fas fa-pencil-alt"></span>
                                    </a>
                                    <a class="btn btn-danger" href="excluirPessoas.jsp?i=<%=i%>">
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
