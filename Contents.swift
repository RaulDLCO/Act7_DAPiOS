import Foundation

/*:
# Playground - Actividad 7
* Valor por tipo y por referencia
* Funciones personalizadas Y Genericos
* Funciones de la biblioteca Swift para Arreglos
*/

/*: 
### Valor por tipo y por referencia
A) Para la colección "var costo_referencia:[Float] = [8.3,10.5,9.9]", aplicar el impuesto del 16% a través de recorrer la colección "costo_referencia" para aplicar el impuesto a cada cantidad, crear una función Impuesto que recibe como parámetro la colección y regrese aplicado el impuesto a cada cantidad.
*/

print("1. Valores con datos netos: ")
var costo_referencia:[Float] = [8.3,10.5,9.9]
print(costo_referencia)

print("2. Valores con impuesto: ")
func iva(Arreglo:[Float]) -> [Float]
{
    var iva:[Float] = []
    for i in Arreglo
    {
        iva.append(i * 0.16)
    }
    return iva
}
print(iva(Arreglo: costo_referencia))

//: B) Crear la función "sumaTres"  que reciba una función con dos valores a sumar y un segundo parametro para sumar el tercer número.

print("3. Función para la  suma de tres valores: ")
let Suma = {(x:Int, y:Int) -> Int in return x + y}
func sumaTres(num1:Int, num2: Int, num3: Int) -> Int
{
    return Suma (num1,num2) + num3
}
print(sumaTres(num1: 1, num2: 2, num3: 3))

/*:
### Funciones personalizadas y Genéricos

 A) Generics: Crear la función genérica para intercambiar valores entre dos variables del mismo tipo.
*/

print("4. Función para intercambio de dos variables del mismo tipo: ")
func IntercambioValor( x: Int, y: Int) -> (Int,Int) {
  let temp = x
  let x = y
  let y = temp
return (x,y)
}

var valor1 = 1
var valor2 = 2
var (valor3) = IntercambioValor(x:valor1,y:valor2)
print(valor3)

//: B) Función personalizada: Crear la función "Transformar" que reciba como parámetro una colección de tipo Int  "var datos = [3,7,9,2]" y una función que transforme cada valor de la coleción en una operación definida fuera de la función, regresando una colección transformada.

print("5. Función para modificar los datos mediante una multiplicación por 10: ")
var datos = [3,7,9,2]

func Transformar(arreglo:[Int]) -> [Int]
{
    return arreglo
}

func CollectionTransform (arreglo:[Int]) -> [Int]
{
    var resultado:[Int] = []
    for Transformar in arreglo
    {
        resultado.append (Transformar * 10)
    }
    return resultado
}
print(CollectionTransform(arreglo: datos))

/*:
### Biblioteca de Swift
A) Aplicar la función de librería de Swift "map" para la colección var precios = [4.2, 5.3, 8.2, 4.5] y aplicar el impuesto de 16% y asignarla a la variable "impuesto"
*/


//: B) Aplicar la función de la librería de Swift "filter" para la colección resultante "impuesto" del paso A, en donde se obtengas solo los precios mayores a 6.0 y asignarlos a la variable "precio_menor"

