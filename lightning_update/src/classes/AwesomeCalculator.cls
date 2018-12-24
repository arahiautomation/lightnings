public class AwesomeCalculator {
    public static double add(double x,double y){
        calculatorServices.calculatorImplPOrt calculator = new calculatorservices.CalculatorImplPort();
        return calculator.doAdd(x,y);
    }
}