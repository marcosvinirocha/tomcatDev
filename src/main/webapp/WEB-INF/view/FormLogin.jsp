<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<c:url value="/entrada" var="linkServetNovaEmpresa" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    

    <form method="post" action="${linkServetNovaEmpresa}">
        Login:<input type="text" name="login" id=""> 
        Senha:  <input type="password" name="senha" id="">

        <input type="hidden" name="acao" value="Login">

        <input type="submit" value="cadastrar">
    </form>
</body>
</html>