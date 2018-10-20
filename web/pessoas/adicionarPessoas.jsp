<%-- 
    Document   : adicionarPessoas
    Created on : 19/10/2018, 14:45:21
    Author     : Renan
--%>
<%@page import="br.com.fatecpg.web.DadosPessoa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Adicionar Pessoas</title>
        <%@include file="../WEB-INF/jspf/head.jspf" %>
    </head>
    <body>
        <header class="py-5 bg-info">
            <div class="container">
                <div class="row">
                    <div class="col-12 text-center py-5 text-white">
                        <h1>Adicionar Pessoas</h1>
                        <p>Projeto POO</p>
                    </div>
                </div>
            </div>
        </header>
        <%@include file="../WEB-INF/jspf/menu.jspf" %>
        <%
            if (request.getParameter("cadastrar") != null) {
                String nome = request.getParameter("nome").toUpperCase();
                String cpf = request.getParameter("cpf");
                String email = request.getParameter("email");
                String telefone = request.getParameter("telefone");
                DadosPessoa v = new DadosPessoa();
                v.setPessoa(nome, cpf, email, telefone);
                DadosPessoa.getPessoas().add(v);
                response.sendRedirect("listarPessoas.jsp");
            }
        %>
        <section class="py-5">
            <div class="container">
                <div class="row">
                    <div class="col-12 text-center pb-4">
                        <p class="text-muted">Realize o cadastro de uma nova pessoa com o formulário abaixo</p>
                    </div>
                    <div class="col-lg-6 col-md-10 m-auto p-5 border bg-light">
                        <form>
                            <div class="form-group">
                                <label class="form-label">Nome:</label>
                                <input type="text" name="nome" class="form-control" placeholder="Digite o nome da pessoa">
                            </div>
                            <div class="form-group">
                                <label class="form-label">CPF:</label>
                                <input type="number" name="cpf" class="form-control" placeholder="Digite o CPF">
                            </div>
                            <div class="form-group">
                                <label class="form-label">E-mail:</label>
                                <input type="email" name="email" class="form-control" placeholder="Digite o email">
                            </div>
                            <div class="form-group">
                                <label class="form-label">Telefone:</label>
                                <input type="number" name="telefone" class="form-control" placeholder="Digite a o telefone">
                            </div>
                            <div class="text-center pt-4">
                                <a href="listarPessoas.jsp" class="btn btn-primary">Voltar</a>
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
