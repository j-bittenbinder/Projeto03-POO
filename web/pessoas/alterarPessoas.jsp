<%-- 
    Document   : alterarVeiculos
    Created on : 19/10/2018, 14:13:02
    Author     : Renan
--%>
<%@page import="br.com.fatecpg.web.DadosPessoa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar Pessoa</title>
        <%@include file="../WEB-INF/jspf/head.jspf" %>
    </head>
    <body>
        <header class="py-5 bg-success">
            <div class="container">
                <div class="row">
                    <div class="col-12 text-center py-5 text-white">
                        <h1>Alterar Pessoas</h1>
                        <p>Projeto POO</p>
                    </div>
                </div>
            </div>
        </header>
        <%@include file="../WEB-INF/jspf/menu.jspf" %>
        <%
            int i = Integer.parseInt(request.getParameter("i"));
            DadosPessoa v = DadosPessoa.getPessoas().get(i);
            if (request.getParameter("alterar") != null) {
                String Nome = request.getParameter("Nome");
                String Cpf = request.getParameter("Cpf");
                String Email = request.getParameter("Email");
                String Telefone = request.getParameter("Telefone");
                v.setPessoa(Nome, Cpf, Email, Telefone);
                DadosPessoa.getPessoas().set(i, v);
                response.sendRedirect("listarPessoas.jsp");
            }
        %>
        <section class="py-5">
            <div class="container">
                <div class="row">
                    <div class="col-12 text-center pb-4">
                        <p class="text-muted">Realize uma alteração na pessoa <b><%= v.getNome() %></b> com o formulário abaixo</p>
                    </div>
                        <div class="col-lg-6 col-md-10 m-auto p-5 border bg-light">
                        <form>
                            <input type="text" name="i" value="<%=i%>" hidden>
                            <div class="form-group">
                                <label class="form-label">Nome:</label>
                                <input type="text" name="Nome" class="form-control" value="<%=v.getNome()%>" placeholder="<%=v.getNome()%>">
                            </div>
                            <div class="form-group">
                                <label class="col-2 form-label">Cpf:</label>
                                <input type="text" name="Cpf" class="form-control" value="<%=v.getCpf()%>" placeholder="<%=v.getCpf()%>">
                            </div>
                            <div class="form-group">
                                <label class="form-label">E-mail:</label>
                                <input type="text" name="Email" class="form-control" value="<%=v.getEmail()%>" placeholder="<%=v.getEmail()%>">
                            </div>
                            <div class="form-group">
                                <label class="form-label">Telefone:</label>
                                <input type="text" name="Telefone" class="form-control" value="<%=v.getTelefone()%>" placeholder="<%=v.getTelefone()%>">
                            </div>
                            <div class="text-center pt-4">
                                <a href="listarPessoas.jsp" class="btn btn-primary">Voltar</a>
                                <button type="submit" class="btn btn-success" name="alterar">Alterar</button>     
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
