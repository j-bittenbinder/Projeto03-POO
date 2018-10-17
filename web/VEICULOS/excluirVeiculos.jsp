<%-- 
    Document   : excluirVeiculos
    Created on : 17/10/2018, 13:31:45
    Author     : oper1.goliveira
--%>
<%@page import="br.com.fatecpg.web.DadosVeiculo"%>
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
            DadosVeiculo v = DadosVeiculo.getVeiculos().get(i);
            if (request.getParameter("excluir") != null) {
                DadosVeiculo.getVeiculos().remove(i);
                response.sendRedirect("listarVeiculos.jsp");
            }
        %>
        <h2>Alteração de dados - Veiculo</h2>
        <div class="container">            
            <div class="row">
                <div class="col-6 m-auto p-5 border bg-light">
                    <form>
                        <input type="text" name="i" value="<%=i%>" hidden>
                        <div class="form-group row">
                            <label class="col-2 col-form-label">Indice:<%=i%></label>
                        </div>
                        <div class="form-group row">
                            <label class="col-2 col-form-label">PLACA:</label>
                            <div class="col-10">
                                <input disabled type="text" name="placa" class="form-control" value="<%=v.getPlaca()%>" placeholder="<%=v.getPlaca()%>">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-2 col-form-label">MARCA:</label>
                            <div class="col-10">
                                <input disabled type="text" name="marca" class="form-control" value="<%=v.getMarca()%>" placeholder="<%=v.getMarca()%>">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-2 col-form-label">MODELO:</label>
                            <div class="col-10">
                                <input disabled type="text" name="modelo" class="form-control" value="<%=v.getModelo()%>" placeholder="<%=v.getModelo()%>">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-2 col-form-label">COR:</label>
                            <div class="col-10">
                                <input disabled type="text" name="cor" class="form-control" value="<%=v.getCor()%>" placeholder="<%=v.getCor()%>">
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
