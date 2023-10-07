### Que palabra va antes en el diccionario? ###
"La funcion devuelve true si la palabra1 va antes que la palabra2 si va antes en el diccionario y false si va despues."

include("posicion.jl")
function mayorque(palabra1, palabra2)
    valor1 = 0 #Iniciamos los valores de cada palabra
    valor2 = 0
    len = min(length(palabra1), length(palabra2)) #Agarramos la longitud de la palabra mas corta
    for i in 1:len #Iteramos en los caracteres de cada palabra
        valor1 = posicion(palabra1[i])
        valor2 = posicion(palabra2[i])
        if valor1 < valor2 #Si el valor total de la palabra1 es menor, devolvemos true
            return true
        elseif valor1 > valor2
            return false
        end
    end
    return length(palabra1) < length(palabra2) #Si la palabra1 es un prefijo de la palabra2 devuelve false y viceversa
    
end
