<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Compound Interest Calculator</title>
    <link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-blue-50">

<p>${requestScope.error}</p>

<div>
    <div class="bg-white mx-auto text-center w-1/2 py-5 shadow-2xl rounded-3xl my-96 max-w-2xl">
        <h2 class="text-4xl font-semibold border-b pb-2 mx-6">Compound Interest Calculator</h2>
        <h3 class="bg-red-300 text-red-700">$</h3>
        <div>
        <form action="${pageContext.request.contextPath}/calc" method="POST">

            <div class="grid grid-cols-2 gap-4 my-5 mx-8">

            <label for="principal-amount" calss="text-xl flex items-center">Principal Amount: <span class="text-amber-300 mx-1">$</span></label>
            <input class="w-full p-1 border-2 placeholder-pink-500 border-pink-300 appearance-none rounded-lg focus:outline-none focus:ring-2" id="principal-amount" type="number" name="principal-amount" value="${pa}">

            <label for="interest" calss-"text-xl flex items-center">Interest Percentage: </label>
            <input class="w-full p-1 border-2 placeholder-pink-500 border-pink-300 appearance-none rounded-lg focus:outline-none focus:ring-2" id="interest" type="number" min="1" max="100" name="interest" value="${ia}">

            <label for="years" calss-"text-xl flex items-center># of Years: </label>
            <input class="w-full p-1 border-2 placeholder-pink-500 border-pink-300 appearance-none rounded-lg focus:outline-none focus:ring-2" id="years" type="number" name="years" value="${y}">

            <label for="compoundingperiod" calss-"text-xl flex items-center>Times per Year: </label>
            <input class="w-full p-1 border-2 placeholder-pink-500 border-pink-300 appearance-none rounded-lg focus:outline-none focus:ring-2" id="compoundingperiod" type="number" name="compoundingperiod" value="${cp}">


    </div>
    <button type="submit" class="bg-fuchsia-700 text-xl font-semibold px-4 py-1 rounded-3xl hover:bg-pink-100 hover:text-white">Calculate</button><br><br>

    <p class="text-3xl font-mono text-green-200">Result: ${requestScope.result}</p>

    </form>
</div>
</div>
</div>

</body>
</html>