<%-- 
    Document   : pessoas
    Created on : 13/10/2018, 13:33:44
    Author     : Julio
--%>

<%@page import="br.com.fatecpg.web.DadosPessoa"%>
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
                <th>Nome</th>
                <th>CPF</th>
                <th>Email</th>
                <th>Telefone</th>
            </tr>
            <%for(DadosPessoa dp: DadosPessoa.getPessoas()){%>
            <%int i = DadosPessoa.getPessoas().indexOf(dp);%>
            <tr>
                <td><%=i%></td>
                <td><%=dp.getNome()%></td>
                <td><%=dp.getCpf()%></td>
                <td><%=dp.getEmail()%></td>
                <td><%=dp.getTelefone()%></td>
            </tr>
            <%}%>
        </table>
    </body>
</html>
