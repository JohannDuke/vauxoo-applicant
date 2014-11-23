#clase que pedira una serie de numeros 
#y se los mandara a la calculadora
import calculator_class
class calculator_test:
	#metodo que pide los datos al usuario
	#utiliza una varible centinela para pedir otro dato
	#o terminar
	#cuando se termina de pedir los numeros
	#se crea un objeto de la calculadora
	#se le manda la lista de numeros creada
	#y se imprimie el resultado
	def pedirDatos(self):
		datos = []
		otroDato = "s"
		while otroDato == "s":
			numero = int(raw_input("introduce el numero:"))
			datos.append(numero)
			otroDato=raw_input("quieres agregar otro numero (s/n):")
		obj = calculator_class.calculator_class()
		print "el resultado de la suma:" + str(obj.sum(datos))
		
objeto = calculator_test()
objeto.pedirDatos();