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
        <%@include file="../WEB-INF/jspf/imports.jspf" %>
    </head>
    <body>
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
        <h2>Alteração de dados - Veiculo</h2>
        <div class="container">            
            <div class="row">
                <div class="col-6 m-auto p-5 border bg-light">
                    <form>
                        <input type="text" name="i" value="<%=i%>" hidden>
                        <div class="text-center">
                            <h3>Indice:<%=i%></h3>
                        </div>
                        <div class="form-group row">
                            <label class="col-2 col-form-label">Nome:</label>
                            <div class="col-10">
                                <input type="text" name="Nome" class="form-control" value="<%=v.getNome()%>" placeholder="<%=v.getNome()%>">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-2 col-form-label">Cpf:</label>
                            <div class="col-10">
                                <input type="text" name="Cpf" class="form-control" value="<%=v.getCpf()%>" placeholder="<%=v.getCpf()%>">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-2 col-form-label">Email:</label>
                            <div class="col-10">
                                <input type="text" name="Email" class="form-control" value="<%=v.getEmail()%>" placeholder="<%=v.getEmail()%>">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-2 col-form-label">Telefone:</label>
                            <div class="col-10">
                                <input type="text" name="Telefone" class="form-control" value="<%=v.getTelefone()%>" placeholder="<%=v.getTelefone()%>">
                            </div>
                        </div>
                        <div class="text-center">
                            <input type="submit" class="btn btn-primary" name="alterar" value="Alterar"/>     
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
