package application;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.PrintWriter;
import java.util.Calendar;

import org.aspectj.lang.Signature;

public aspect Observador {
	File file = new File("src/application/ChangeColor.txt");
	Calendar cal = Calendar.getInstance();
	pointcut changedColor() : execution(void *.changedColor*(*)); 
	
	before() : changedColor() {
		System.out.println("\t**Se va a cambiar el color de fondo de la App**");
		Signature sig = thisJoinPointStaticPart.getSignature();
		System.out.println("Recibiendo: " + sig.getDeclaringType().getName() + " " + sig.getName());
	}
	
	after() : changedColor() {
		String tipo = thisJoinPoint.getSignature().getName().toString();
		Signature signature = thisJoinPoint.getSignature();
		String color;
		if(tipo.equals("changedColorRed")) {
			System.out.println("Se cambio el color a: red\n");
			color = "Rojo";
		}else if(tipo.equals("changedColorBlue")) {
			System.out.println("Se cambio el color a: blue\n");
			color = "Azul";
		}else {
			System.out.println("Se cambio el color a: pink\n");
			color = "Rosa";
		}
		String linea = "";
		linea = thisJoinPoint.getSignature() +" "+ color +" "+cal.getTime();
    	System.out.println(thisJoinPoint.getSignature() + color+" "+cal.getTime());
    	FileWriter fichero = null;
    	BufferedWriter bw = null;
    	PrintWriter pw = null;
        try {	
            fichero = new FileWriter(file,true);
            bw = new BufferedWriter(fichero);
            bw.write(linea+"\n");
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (null != fichero) {
                    bw.close();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
		
	}
	
}
