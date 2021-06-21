package application;

import org.aspectj.lang.Signature;

public aspect Observador {
	//Code
	
pointcut changedColor() : execution(void .changedColor(*));
	
	
	
	before() : changedColor() {
		System.out.println("\t**Se va a cambiar el color de fondo de la App**");
		Signature sig = thisJoinPointStaticPart.getSignature();
		System.out.println("Recibiendo: " + sig.getDeclaringType().getName() + sig.getName());
	}
}
