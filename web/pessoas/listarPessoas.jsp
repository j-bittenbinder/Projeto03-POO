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
        <%@include file="../WEB-INF/jspf/imports.jspf" %>
    </head>
    <body>
        <h1>Lista Pessoas</h1>
                                        <a href="../home.jsp"><button class="btn btn-success">Inserir</button></a>
        <div class="container">
            <div class="row">
                <div class="col">
                    <table border="1" class="text-center table table-striped table-light">
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
                        <%for (DadosPessoa dv : DadosPessoa.getPessoas()) {%>
                        <%int i = DadosPessoa.getPessoas().indexOf(dv);%>
                        <tr>
                            <td><%=i%></td>
                            <td><%=dv.getNome()%></td>
                            <td><%=dv.getTelefone()%></td>
                            <td><%=dv.getEmail()%></td>
                            <td><%=dv.getCpf()%></td>
                            <td>
                                <a href="alterarPessoas.jsp?i=<%=i%>" ><button class="btn btn-primary">Alterar</button></a>
                                <a href="excluirPessoas.jsp?i=<%=i%>"><button class="btn btn-danger">Excluir</button></a>
                            </td>
                        </tr>
                        <%}%>
                    </table>
                    <div class="text-center">
                        <a href="adicionarPessoas.jsp"><button class="btn btn-success">Inserir</button></a>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
