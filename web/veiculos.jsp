<%-- 
    Document   : veiculos
    Created on : 13/10/2018, 13:34:27
    Author     : Julio
--%>

<%@page import="br.com.fatecpg.web.DadosVeiculo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <table border="1">
            <tr>
                <th>ID</th>
                <th>Placa</th>
                <th>Marca</th>
                <th>Modelo</th>
                <th>Cor</th>
            </tr>
            <%for(DadosVeiculo dv: DadosVeiculo.getVeiculos()){%>
            <%int i = DadosVeiculo.getVeiculos().indexOf(dv);%>
            <tr>
                <td><%=i%></td>
                <td><%=dv.getPlaca()%></td>
                <td><%=dv.getMarca()%></td>
                <td><%=dv.getModelo()%></td>
                <td><%=dv.getCor()%></td>
            </tr>
            <%}%>
        </table>
    </body>
</html>
