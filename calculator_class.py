#clase que contendra el metodo suma
class calculator_class:
	#defino el metodo suma recibe de parametro una lista de numeros
	#con un for se recorrera la lista de numeros
	#se iran sumando a lo que contenga resultado
	def sum(self, numeros):
		resultado = 0
		for elem in numeros:
			resultado = resultado + elem
		return resultado


