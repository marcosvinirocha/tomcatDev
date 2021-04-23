<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ page isELIgnored="false" %>
<c:url value="/alteraEmpresa" var="linkServetAlteraEmpresa" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    

    <form method="post" action="${linkServetAlteraEmpresa}">
        nome:<input type="text" name="nome" id="" value="${empresa.nome}">
        data de abertura:  <input type="text" name="data" id="" value="<fmt:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yyyy"/>">
        <input type="hidden" name="id" id="" value="${empresa.id}">
        <input type="submit" value="cadastrar">
    </form>
</body>
</html>