<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>

<p>${requestScope.error}</p>

<form action="${pageContext.request.contextPath}/calc" method="POST">

    <label for="principal-amount">Principal Amount: </label>
    <input id="principal-amount" type="number" name="principal-amount">

    <label for="interest">Interest Percentage: </label>
    <input id="interest" type="number" min="1" max="100" name="interest">

    <label for="years"># of Years: </label>
    <input id="years" type="number" name="years">

    <label for="compoundingperiod">Times per Year: </label>
    <input id="compoundingperiod" type="number" name="compoundingperiod">

    <button type="submit">Calculate</button>

    <p>Result: ${requestScope.result}</p>

</form>


</body>
</html>