<%-- 
    Document   : adicionarEmpresa.jsp
    Created on : 18/10/2018, 16:16:00
    Author     : Mateus
--%>
<%@page import="br.com.fatecpg.web.DadosEmpresa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar Empresa</title>
        <%@include file="../WEB-INF/jspf/head.jspf" %>
    </head>
    <body>
        <header class="py-5 bg-success">
            <div class="container">
                <div class="row">
                    <div class="col-12 text-center py-5 text-white">
                        <h1>Adicionar Empresas</h1>
                        <p>Projeto POO</p>
                    </div>
                </div>
            </div>
        </header>
        <%@include file="../WEB-INF/jspf/menu.jspf" %>
        <%
            int i = Integer.parseInt(request.getParameter("i"));
            DadosEmpresa e = DadosEmpresa.getEmpresas().get(i);
            if (request.getParameter("alterar") != null) {
                String nome = request.getParameter("nome");
                String razaosocial = request.getParameter("razao-social");
                String cnpj = request.getParameter("cnpj");
                String telefone = request.getParameter("telefone");
                String website = request.getParameter("website");
                e.setEmpresa(nome, razaosocial, cnpj, telefone, website);
                DadosEmpresa.getEmpresas().set(i, e);
                response.sendRedirect("listarEmpresas.jsp");
            }
        %>
        <section class="py-5">
            <div class="container">
                <div class="row">
                    <div class="col-12 text-center pb-4">
                        <p class="text-muted">Realize uma alteração da empresa <b><%= e.getNome() %></b> com o formulário abaixo</p>
                    </div>
                    <div class="col-lg-6 col-md-10 m-auto p-5 border bg-light">
                        <form>
                            <input type="text" name="i" value="<%=i%>" hidden>
                            <div class="form-group">
                                <label class="form-label" for="nome">Nome:</label>
                                <input type="text" id="nome" name="nome" class="form-control" placeholder="Digite o nome da empresa" value="<%= e.getNome() %>" required>
                            </div>
                            <div class="form-group">
                                <label class="form-label" for="razao-social">Razão Social:</label>
                                <input type="text" id="razao-social" name="razao-social" class="form-control" placeholder="Digite a Razão Social" value="<%= e.getRazaoSocial() %>" required>
                            </div>
                            <div class="form-group">
                                <label class="form-label" for="cnpj">CNPJ:</label>
                                <input type="text" id="cnpj" name="cnpj" class="form-control" placeholder="Digite o CNPJ da empresa" value="<%= e.getCnpj() %>" required>
                            </div>
                            <div class="form-group">
                                <label class="form-label" for="telefone">Telefone:</label>
                                <input type="tel" id="telefone" name="telefone" class="form-control" placeholder="Digite o telefone da empresa." value="<%= e.getTelefone() %>" required>
                            </div>
                            <div class="form-group">
                                <label class="form-label" for="website">Website:</label>
                                <input type="url" id="website" name="website" class="form-control" placeholder="Digite o website da empresa." value="<%= e.getWebsite() %>" required>
                            </div>
                            <div class="text-center pt-4">
                                <a href="listarEmpresas.jsp" class="btn btn-primary">Voltar</a>
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
