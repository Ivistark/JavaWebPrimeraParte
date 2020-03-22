/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pCalculos;

/**
 *
 * @author alumno
 */
public class Calculo {
    
    private static int resultado;
    
    public static int  suma(int num1, int num2){
        resultado=num1+num2;
        return resultado;
    }
    public static int resta(int num1, int num2){
        resultado=num1-num2;
        return resultado;
    }
    public static int multiplicacion(int num1, int num2){
        resultado=num1*num2;
        return resultado;
    }
    
}
