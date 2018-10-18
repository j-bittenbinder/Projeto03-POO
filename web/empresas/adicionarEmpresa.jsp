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
        <title>Adicionar Empresa</title>
        <%@include file="../WEB-INF/jspf/imports.jspf" %>
    </head>
    <body>
        <%
            if (request.getParameter("cadastrar") != null) {
                String nome = request.getParameter("nome").toUpperCase();
                String razaosocial = request.getParameter("razao-social");
                String cnpj = request.getParameter("cnpj");
                String telefone = request.getParameter("telefone");
                String website = request.getParameter("website");
                DadosEmpresa e = new DadosEmpresa();
                e.setEmpresa(nome, razaosocial, cnpj, telefone, website);
                DadosEmpresa.getEmpresas().add(e);
                response.sendRedirect("listarEmpresas.jsp");
            }
        %>
        <div class="container">
            <h1>Adicionar Empresa</h1>
            <div class="row">
                <div class="col-6 m-auto p-5 border bg-light">
                    <form>
                        <div class="form-group row">
                            <label class="col-2 col-form-label" for="nome">Nome:</label>
                            <div class="col-10">
                                <input type="text" id="nome" name="nome" class="form-control" placeholder="Digite o nome da empresa" required>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-2 col-form-label" for="razao-social">Razão Social:</label>
                            <div class="col-10">
                                <input type="text" id="razao-social" name="razao-social" class="form-control" placeholder="Digite a Razão Social" required>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-2 col-form-label" for="cnpj">CNPJ:</label>
                            <div class="col-10">
                                <input type="text" id="cnpj" name="cnpj" class="form-control" placeholder="Digite o CNPJ da empresa" required>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-2 col-form-label" for="telefone">Telefone:</label>
                            <div class="col-10">
                                <input type="tel" id="telefone" name="telefone" class="form-control" placeholder="Digite o telefone da empresa." required>
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-2 col-form-label" for="website">Website:</label>
                            <div class="col-10">
                                <input type="url" id="website" name="website" class="form-control" placeholder="Digite o website da empresa." required>
                            </div>
                        </div>
                        <div class="text-center">
                            <a href="listarEmpresas.jsp" class="btn btn-outline-secundary">Voltar</a>
                            <input type="submit" class="btn btn-success" name="cadastrar" value="Cadastrar"/>     
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
