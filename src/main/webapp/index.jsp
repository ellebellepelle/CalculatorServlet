<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Compound Interest Calculator</title>
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-blue-50 min-h-screen flex items-center justify-center">

<p>${requestScope.error}</p>

<div>
    <div class="bg-white mx-auto text-center w-1/2 py-5 shadow-2xl rounded-3xl max-w-2xl">
        <h2 class="text-4xl font-semibold border-b pb-2 mx-6">Compound Interest Calculator</h2>
        <h3 class="bg-red-300 text-red-700">$</h3>
        <div>
        <form action="${pageContext.request.contextPath}/calc" method="POST">

            <div class="grid grid-cols-2 gap-4 my-5 mx-8">

            <label for="principal-amount" class="text-xl flex items-center">Principal Amount: <span class="text-amber-300 mx-1">$</span></label>
            <input class="w-full p-1 border-2 placeholder-pink-500 border-pink-300 appearance-none rounded-lg focus:outline-none focus:ring-2" id="principal-amount" type="number" name="principal-amount" value="${pa}">

            <label for="interest" class="text-xl flex items-center">Interest Percentage: </label>
            <input class="w-full p-1 border-2 placeholder-pink-500 border-pink-300 appearance-none rounded-lg focus:outline-none focus:ring-2" id="interest" type="number" min="1" max="100" name="interest" value="${ia}">

            <label for="years" class="text-xl flex items-center"># of Years: </label>
            <input class="w-full p-1 border-2 placeholder-pink-500 border-pink-300 appearance-none rounded-lg focus:outline-none focus:ring-2" id="years" type="number" name="years" value="${y}">

            <label for="compoundingperiod" class="text-xl flex items-center">Times per Year: </label>
            <input class="w-full p-1 border-2 placeholder-pink-500 border-pink-300 appearance-none rounded-lg focus:outline-none focus:ring-2" id="compoundingperiod" type="number" name="compoundingperiod" value="${cp}">


    </div>
    <button  class="bg-fuchsia-700 text-xl font-semibold px-4 py-1 rounded-3xl hover:bg-pink-100 hover:text-white" type="submit">Calculate</button>

    <p class="text-3xl font-mono text-green-200">Result: ${requestScope.result}</p>

    </form>
</div>
</div>
</div>

</body>
</html>