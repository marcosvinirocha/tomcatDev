<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <%@ page isELIgnored="false" import="java.util.List,java.io.*,java.util.*, com.marcos.servlet.Empresa" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


    <!DOCTYPE hmtl>
    <html>
    <head>
    <meta charset="ISO-8859-1">
    <title>Java Standard Taglib</title>
    </head>
    <body>

        <c:if test="${not empty empresa}">
            Empresa ${ empresa } cadastrada com sucesso!
        </c:if>
        
        Lista de empresas: <br />
    
        <ul>
            <c:forEach items="${empresas}" var="empresa">
                
                <li>${empresa.nome} - <fmt:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yyyy"/> </li>
                <a href="/tomcatDev/mostraEmpresa?id=${empresa.id}">editar</a>
                <a href="/tomcatDev/removeEmpresa?id=${empresa.id}">Remove</a>
            </c:forEach>
        </ul>
    
    </body>
    </html>