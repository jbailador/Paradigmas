module Library where
import PdePreludat

doble :: Number -> Number
doble numero = numero + numero

--Saber si un numero es copado, es decir es par o mayor a 20
numeroCopado :: Number -> Bool
esNumeroCopado numero = numero > 20 || even numero

--even devuelve si es par o impar el numero

esNumeroSuperCopado :: Number -> Bool
esNumeroSuperCopado numero = numero > 100 && esNumeroCopado numero

--Saber costo de entrada, si es mayor a 18 sale edad*3, sino sale 5
--Se hace mediante funciones por partes (Guardas)
costoEntrada :: Number -> Number
costoEntrada edad 
 | edad >= 18 = edad * 3
 | otherwise = 5 
-- | puede funcionar como un if y se llama pipe.


--Dada una hora de una compra, quiero conoer el descuento que me realizan. 
--Hasta las 10 hay 10%, despues de las 18 es 0%
--En cualquier otra hora es de 5%
--Si la hora esta entre las 13 y las 17 hay un descuento del 60%
descuentoSegunHora :: Number -> Number
descuentoSegunHora hora 
    | hora <= 10 = 0,1
    | hora > 13 && hora < 17 = 0.6
    | hora > 18 = 0
    | otherwise = 0,05
--El otherwise va siempre a lo ultimo

tieneMuchaPlata :: Number -> Bool
tieneMuchaPlata plata = plata > 100 = True

--No hacer lo siguiente
tieneMuchaPlata2 :: Number -> Bool
tieneMuchaPlata2 plata
    | plata > 100 = True
    | otherwise = False

--Para definir un caso particular se hace esto antes que utilizar guardas
nivelDeRareza :: String -> Number
nivelDeRareza "Tom" = 900 --CASO PARTICULAR llamado Pattern Matching
nivelDeRareza nombre = length nombre * 2

--Seria lo mismo que hacer:
nivelDeRareza :: String -> Number
nivelDeRareza nombre 
 | nombre == "Tom" = 900
 | otherwise = length nombre * 2
