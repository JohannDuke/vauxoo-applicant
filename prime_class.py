#clase para verificar si un numero es primo
class prime_class:
	#metodo que recibe el numero a evaluar
	#se declara un for para recorrer todos los numeros 
	#desde 1 hasta el numero a evaluar
	#si el residuo de la divicion entre el numero e i 
	#es igual a 0 es un numero divicible y se cuenta uno mas
	#si el contador llega a contar 3 o mas numeros divibles 
	#se descarta que sea numero primo y se rompe el ciclo
	#a veriricar se le asigna false si no se mantendra con el valor de true
	    def is_prime(self, numero):
        contador = 0
        verificar = True
        for i in range(1, numero+1):
            if (numero % i == 0):
                contador = contador+1
            if contador >= 3:
                verificar = False
                break
        return verificar


objetoClase = prime_class()
numero1 = 2
numero2 = 3
numero3 = 5
numero4 = 7
numero5 = 4
numero6 = 8
numero7 = 9
numero8 = 10

#mando llamar el metood y le mando el numero si me regresa true imprimo que es primo si no imprimo que no es primo
if objetoClase.is_prime(numero1):
	print str(numero1) + " es primo"
else:
	print str(numero1) + " no es primo"

if objetoClase.is_prime(numero2):
	print str(numero2) + " es primo"
else:
	print str(numero2) + " no es primo"

if objetoClase.is_prime(numero3):
	print str(numero3) + " es primo"
else:
	print str(numero3) + " no es primo"

if objetoClase.is_prime(numero4):
	print str(numero4) + " es primo"
else:
	print str(numero4) + " no es primo"

if objetoClase.is_prime(numero5):
	print str(numero5) + " es primo"
else:
	print str(numero5) + " no es primo"
if objetoClase.is_prime(numero6):
	print str(numero6) + " es primo"
else:
	print str(numero6) + " no es primo"
if objetoClase.is_prime(numero7):
	print str(numero7) + " es primo"
else:
	print str(numero7) + " no es primo"

if objetoClase.is_prime(numero8):
	print str(numero8) + " es primo"
else:
	print str(numero8) + " no es primo"