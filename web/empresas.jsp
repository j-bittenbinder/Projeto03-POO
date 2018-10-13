<%-- 
    Document   : empresas
    Created on : 13/10/2018, 13:34:02
    Author     : Julio
--%>

<%@page import="br.com.fatecpg.web.DadosEmpresa"%>
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
                <th>Razão Social</th>
                <th>CNPJ</th>
                <th>Telefone</th>
                <th>Website</th>
            </tr>
            <%for(DadosEmpresa de: DadosEmpresa.getEmpresas()){%>
            <%int i = DadosEmpresa.getEmpresas().indexOf(de);%>
            <tr>
                <td><%=i%></td>
                <td><%=de.getNome()%></td>
                <td><%=de.getRazaoSocial()%></td>
                <td><%=de.getCnpj()%></td>
                <td><%=de.getTelefone()%></td>
                <td><%=de.getWebsite()%></td>
            </tr>
            <%}%>
        </table>
    </body>
</html>
