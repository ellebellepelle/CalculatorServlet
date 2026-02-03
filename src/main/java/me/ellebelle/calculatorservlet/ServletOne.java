package me.ellebelle.calculatorservlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

import static java.lang.Integer.parseInt;

@WebServlet(name = "ServletOne", urlPatterns = {"/calc"})
public class ServletOne extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        // efter att jag servleten är klar, visa index.jsp för användaren.
    getServletContext().getRequestDispatcher("/index.jsp").forward(req, resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.setAttribute("error", "POST reached servlet!");


        String principleAmount = req.getParameter("principal-amount");
String interestAmount = req.getParameter("interest");
String years = req.getParameter("years");
String compoundingperiod = req.getParameter("compoundingperiod");

String error;

if (principleAmount == null || principleAmount.isBlank() || interestAmount == null || interestAmount.isBlank() || years == null || years.isBlank() || compoundingperiod == null || compoundingperiod.isBlank()) {
error = "One of the parameters is blank, try again.";

req.setAttribute("error", error);
} else {

    double result = Utils.calculateCompoundInterest(
            Double.parseDouble(principleAmount),
            Double.parseDouble(interestAmount) / 100,
            Integer.parseInt(years),
            Integer.parseInt(compoundingperiod));

req.setAttribute("result", result);
}

        // efter att jag servleten är klar, visa index.jsp för användaren.
getServletContext().getRequestDispatcher("/index.jsp").forward(req, resp);

    }
}

