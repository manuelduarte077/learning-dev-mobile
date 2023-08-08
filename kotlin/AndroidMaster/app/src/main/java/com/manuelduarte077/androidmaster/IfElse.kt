package com.manuelduarte077.androidmaster

fun main() {

//    ifBasico(10, 20)

    // When
    getMonth(1)

}

fun ifBasico(a: Int, b: Int) {

    if (a > b) {
        println("a es mayor que b")
    } else {
        println("a es menor que b")
    }
}

fun getMonth(month: Int) {

    when (month) {
        1 -> {
            println("Enero")
            println("Mes 1")

        }

        2 -> println("Febrero")
        3 -> println("Marzo")
        4 -> println("Abril")
        5 -> println("Mayo")
        6 -> println("Junio")
        7 -> println("Julio")
        8 -> println("Agosto")
        9 -> println("Septiembre")
        10 -> println("Octubre")
        11 -> println("Noviembre")
        12 -> println("Diciembre")
        else -> println("Mes no encontrado")
    }
}