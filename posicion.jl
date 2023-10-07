### Posicion en el abecedario ###
"Le damos a la función un caracter y nos dice su posición en el abecedario"

function posicion(caracter)
    caracteres = " abcdefghijklmñopqrstuvwxyz" #definimos el abecedario
    pos = 0 #Creamos la posicion inicial
    for i in caracteres #Itermaos el abecedario
        pos = pos + 1  #Con cada iteracion actualizamos la posicion
        if i == caracter #Si nos encontramso al caracter devolvemos la posicion en la que esta
            return pos
        end
    end
end
