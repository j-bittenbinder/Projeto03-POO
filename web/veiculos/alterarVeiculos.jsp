<%-- 
    Document   : alterarVeiculos
    Created on : 17/10/2018, 11:13:02
    Author     : oper1.goliveira
--%>
<%@page import="br.com.fatecpg.web.DadosVeiculo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar Veiculo</title>
        <%@include file="../WEB-INF/jspf/head.jspf" %>
    </head>
    <body>
        <header class="py-5 bg-success">
            <div class="container">
                <div class="row">
                    <div class="col-12 text-center py-5 text-white">
                        <h1>Alterar Veículos</h1>
                        <p>Projeto POO</p>
                    </div>
                </div>
            </div>
        </header>
        <%@include file="../WEB-INF/jspf/menu.jspf" %>
        <%
            int i = Integer.parseInt(request.getParameter("i"));
            DadosVeiculo v = DadosVeiculo.getVeiculos().get(i);
            if (request.getParameter("alterar") != null) {
                String placa = request.getParameter("placa").toUpperCase();
                String marca = request.getParameter("marca");
                String modelo = request.getParameter("modelo");
                String cor = request.getParameter("cor");
                v.setVeiculo(placa, marca, modelo, cor);
                DadosVeiculo.getVeiculos().set(i, v);
                response.sendRedirect("listarVeiculos.jsp");
            }
        %>
        <section class="py-5">
            <div class="container">
                <div class="row">
                    <div class="col-12 text-center pb-4">
                        <p class="text-muted">Realize uma alteração no veículo da placa <b><%= v.getPlaca() %></b> com o formulário abaixo</p>
                    </div>
                        <div class="col-lg-6 col-md-10 m-auto p-5 border bg-light">
                    <form>
                        <input type="text" name="i" value="<%=i%>" hidden>
                        <div class="form-group">
                            <label class="form-label">Placa:</label>
                            <input type="text" name="placa" class="form-control" value="<%=v.getPlaca()%>" placeholder="<%=v.getPlaca()%>">
                        </div>
                        <div class="form-group">
                            <label class="form-label">Marca:</label>
                            <input type="text" name="marca" class="form-control" value="<%=v.getMarca()%>" placeholder="<%=v.getMarca()%>">
                        </div>
                        <div class="form-group">
                            <label class="form-label">Modelo:</label>
                            <input type="text" name="modelo" class="form-control" value="<%=v.getModelo()%>" placeholder="<%=v.getModelo()%>">
                        </div>
                        <div class="form-group">
                            <label class="form-label">Cor:</label>
                            <input type="text" name="cor" class="form-control" value="<%=v.getCor()%>" placeholder="<%=v.getCor()%>">
                        </div>
                        <div class="text-center pt-4">
                            <a href="listarVeiculos.jsp" class="btn btn-primary">Voltar</a>
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
