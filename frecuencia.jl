#Esta funcion nos devuelve una lista, ordendada por frecuencias
include("posicion_en_lista.jl")
function frecuencia(lista)
	#iniciamos una lista vacia
	cadena = []
	#Iteramos por la lista y le aplicamos la funcion posicion al elemento actual
	for i in lista
		p = posicion_en_lista(i, cadena)
		#Si [0, n] agregamos la palabra a la lista en la posición n
		if p[1] == 0
			push!(cadena, 0)
			for e in length(cadena):-1:(p[2] + 1)
				cadena[e] = cadena[e - 1]
			end
			cadena[p[2]] = [i, 1]
		end
		
		#si [1, n] aumentamos el contador de la posición n
		if p[1] == 1
			cadena[p[2]][2] = cadena[p[2]][2] + 1
		end
	end
	return cadena
end
