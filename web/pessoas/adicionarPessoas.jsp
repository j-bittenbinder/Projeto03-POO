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
        <%@include file="../WEB-INF/jspf/imports.jspf" %>
    </head>
    <body>
        <h1>Adicionar Pessoas</h1>
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
        <div class="container">            
            <div class="row">
                <div class="col-6 m-auto p-5 border bg-light">
                    <form>
                        <div class="form-group row">
                            <label class="col-2 col-form-label">Nome:</label>
                            <div class="col-10">
                                <input type="text" name="nome" class="form-control" placeholder="Digite o nome da pessoa">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-2 col-form-label">CPF:</label>
                            <div class="col-10">
                                <input type="text" name="cpf" class="form-control" placeholder="Digite o CPF">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-2 col-form-label">Email:</label>
                            <div class="col-10">
                                <input type="text" name="email" class="form-control" placeholder="Digite o email">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-2 col-form-label">Telefone:</label>
                            <div class="col-10">
                                <input type="text" name="telefone" class="form-control" placeholder="Digite a o telefone">
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
