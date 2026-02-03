package me.ellebelle.calculatorservlet;

public class Utils {

    public static double calculateCompoundInterest(double principal, double interest, int years, int compoundingPeriod) {
        return Math.round(principal * Math.pow((1 + (interest / compoundingPeriod)), (compoundingPeriod * years)));
    }
}
