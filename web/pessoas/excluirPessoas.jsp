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
        <%@include file="../WEB-INF/jspf/imports.jspf" %>
    </head>
    <body>
        <%
            int i = Integer.parseInt(request.getParameter("i"));
            DadosPessoa v = DadosPessoa.getPessoas().get(i);
            if (request.getParameter("excluir") != null) {
                DadosPessoa.getPessoas().remove(i);
                response.sendRedirect("listarPessoas.jsp");
            }
        %>
        <h2>Alteração de dados - Pessoas</h2>
        <div class="container">            
            <div class="row">
                <div class="col-6 m-auto p-5 border bg-light">
                    <form>
                        <input type="text" name="i" value="<%=i%>" hidden>
                        <div class="form-group row">
                            <label class="col-2 col-form-label">Indice:<%=i%></label>
                        </div>
                        <div class="form-group row">
                            <label class="col-2 col-form-label">Nome:</label>
                            <div class="col-10">
                                <input disabled type="text" name="nome" class="form-control" value="<%=v.getNome()%>" placeholder="<%=v.getNome()%>">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-2 col-form-label">Telefone:</label>
                            <div class="col-10">
                                <input disabled type="text" name="telefone" class="form-control" value="<%=v.getTelefone()%>" placeholder="<%=v.getTelefone()%>">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-2 col-form-label">Email:</label>
                            <div class="col-10">
                                <input disabled type="text" name="email" class="form-control" value="<%=v.getEmail()%>" placeholder="<%=v.getEmail()%>">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-2 col-form-label">CPF:</label>
                            <div class="col-10">
                                <input disabled type="text" name="cpf" class="form-control" value="<%=v.getCpf()%>" placeholder="<%=v.getCpf()%>">
                            </div>
                        </div>
                        <div class="text-center">
                            
                            <a href="./listarVeiculos.jsp" class="btn btn-warning">Cancelar</a>
                            <input type="submit" class="btn btn-danger" name="excluir" value="Excluir"/>     
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
