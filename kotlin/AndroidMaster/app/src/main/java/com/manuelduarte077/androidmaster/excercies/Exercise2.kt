package com.manuelduarte077.androidmaster.excercies

/**
 * Las entradas de cine suelen tener un precio diferente según la edad de los espectadores.

En el código inicial que se proporciona en el siguiente fragmento de código, escribe un programa que calcule los precios de estas entradas basados en la edad:

Un precio de entrada infantil de USD 15 para personas de 12 años o menos.
Un precio de entrada estándar de USD 30 para personas de entre 13 y 60 años. Los lunes, un precio estándar con descuento de USD 25 para el mismo grupo etario
Un precio para adultos mayores de USD 20 para personas de 61 años o más (asumimos que la edad máxima de un espectador es de 100 años)
Un valor de -1 para indicar que el precio no es válido cuando un usuario ingresa una edad fuera de las especificaciones

RESULTADO:
- The movie ticket price for a person aged 5 is $15.
- The movie ticket price for a person aged 28 is $25.
- The movie ticket price for a person aged 87 is $20.
 */

fun main() {
    val child = 5
    val adult = 28
    val senior = 87

    val isMonday = true

    println(
        "The movie ticket price for a person aged $child is \$${
            printTicketPrice(
                child,
                isMonday
            )
        }."
    )
    println(
        "The movie ticket price for a person aged Sadult is \$${
            printTicketPrice(
                adult,
                isMonday
            )
        }."
    )
    println(
        "The movie ticket price for a person aged $senior is \$${
            printTicketPrice(
                senior,
                isMonday
            )
        }."
    )
}

fun printTicketPrice(age: Int, isMonday: Boolean): Int {

    when (age) {
        in 0..12 -> println("Un precio de entrada infantil de USD 15 para personas de 12 años o menos.")
        in 13..60 -> {
            if (isMonday) {
                println("Un precio estándar con descuento de USD 25 para el mismo grupo etario")
            } else {
                println("Un precio de entrada estándar de USD 30 para personas de entre 13 y 60 años.")
            }
        }

        in 61..100 -> println("Un precio para adultos mayores de USD 20 para personas de 61 años o más")
        else -> println("Un valor de -1 para indicar que el precio no es válido cuando un usuario ingresa una edad fuera de las especificaciones")
    }
    return age
}