<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>

<body>
    <c:if test="${not empty empresa}">
        Empresa ${empresa} cadastrada com sucesso!
    </c:if>

    <c:if test="${empty empresa}">
        nenhuma empresa cadastrada!
    </c:if>
    
</body>

</html>