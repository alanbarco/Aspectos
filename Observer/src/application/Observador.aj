package application;

import org.aspectj.lang.Signature;

public aspect Observador {
	
	pointcut changedColor() : execution(void *.changedColor*(*)); 
	
	before() : changedColor() {
		System.out.println("\t**Se va a cambiar el color de fondo de la App**");
		Signature sig = thisJoinPointStaticPart.getSignature();
		System.out.println("Recibiendo: " + sig.getDeclaringType().getName() + " " + sig.getName());
	}
	
	after() : changedColor() {
		String tipo = thisJoinPoint.getSignature().getName().toString();
		Signature signature = thisJoinPoint.getSignature();
		if(tipo.equals("changedColorRed")) {
			System.out.println("Se cambio el color a: red\n");
		}else if(tipo.equals("changedColorBlue")) {
			System.out.println("Se cambio el color a: blue\n");
		}else {
			System.out.println("Se cambio el color a: pink\n");
		}
	}
	
}
