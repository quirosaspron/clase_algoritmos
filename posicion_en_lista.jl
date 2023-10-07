### La palabra esta en la lista? En que posicion debe de ir?###
"Esta funcion nos devuelve una lista de dos elementos: El primer nos dice si la palabra esta o no en la lista y el segundo nos dice cual es 
su posicion en la lista"

include("mayorque.jl")
function posicion_en_lista(palabra, lista)
    izquierda = 1 #El inicio de la lista
    derecha = length(lista) #El final de la lista

    while izquierda <= derecha 
        medio = Int(floor((izquierda + derecha)/2)) #La mitad de la lista
        palabra_media = lista[medio] 

        if palabra_media == palabra #Si la plabra de en medio es la palabra que buscamos, ya acabamos
            return [true, medio]
        elseif  mayorque(palabra_media, palabra) #Si la palabra esta en la mitad derecha de la lista, movemos nuestro inicio
            izquierda = medio + 1
        else #Si la palabra esta en la mitad izquierda, movemos el final
            derecha = medio - 1
        end
    end
    return [false, izquierda] #Regresamos la posicion hipotetica donde deberiamos de poner nuestra palabra en la lista
end
