<%-- 
    Document   : excluirPessoas
    Created on : 17/10/2018, 14:31:45
    Author     : Renan
--%>
<%@page import="br.com.fatecpg.web.DadosPessoa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar Veiculo</title>
        <%@include file="../WEB-INF/jspf/head.jspf" %>
    </head>
    <body>
        <header class="py-5 bg-danger">
            <div class="container">
                <div class="row">
                    <div class="col-12 text-center py-5 text-white">
                        <h1>Excluir Empresa</h1>
                        <p>Projeto POO</p>
                    </div>
                </div>
            </div>
        </header>
        <%@include file="../WEB-INF/jspf/menu.jspf" %>
        <%
            int i = Integer.parseInt(request.getParameter("i"));
            DadosPessoa v = DadosPessoa.getPessoas().get(i);
            if (request.getParameter("excluir") != null) {
                DadosPessoa.getPessoas().remove(i);
                response.sendRedirect("listarPessoas.jsp");
            }
        %>
        <section class="py-5">
            <div class="container">
                <div class="row">
                    <div class="col-12 text-center pb-4">
                        <p class="text-muted">Deseja realmente excluir a pessoa <b><%= v.getNome() %></b>?</p>
                    </div>
                    <div class="col-lg-6 col-md-10 m-auto p-5 border bg-light">
                        <form>
                            <input type="text" name="i" value="<%=i%>" hidden>
                            <div class="form-group">
                                <label class="form-label">Nome:</label>
                                <input disabled type="text" name="nome" class="form-control" value="<%=v.getNome()%>" placeholder="<%=v.getNome()%>">
                            </div>
                            <div class="form-group">
                                <label class="form-label">Telefone:</label>
                                <input disabled type="text" name="telefone" class="form-control" value="<%=v.getTelefone()%>" placeholder="<%=v.getTelefone()%>">
                            </div>
                            <div class="form-group">
                                <label class="col-2 col-form-label">Email:</label>
                                <input disabled type="text" name="email" class="form-control" value="<%=v.getEmail()%>" placeholder="<%=v.getEmail()%>">
                            </div>
                            <div class="form-group">
                                <label class="form-label">CPF:</label>
                                <input disabled type="text" name="cpf" class="form-control" value="<%=v.getCpf()%>" placeholder="<%=v.getCpf()%>">
                            </div>
                            <div class="text-center">
                                <a href="listarPessoas.jsp" class="btn btn-primary">Voltar</a>
                                <button type="submit" class="btn btn-danger" name="excluir">Excluir</button>     
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
