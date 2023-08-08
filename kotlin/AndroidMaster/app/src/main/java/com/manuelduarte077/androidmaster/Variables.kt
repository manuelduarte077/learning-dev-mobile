package com.manuelduarte077.androidmaster

/**
 * Variables
 * */

fun main() {

    /// Variables
    variables()

    /// My Age
    ageCurrent(22)

    /// Sum
    val result = sum(10, 20)
    println("El resultado es: $result")

}

/**
 * Variables
 * */
fun variables() {
    // int
    val age: Int = 22

    // Long
    val number: Long = 1234567890L

    // Float
    val pi: Float = 3.1416f

    // Double
    val pi2: Double = 3.1416

    /// Variables alfanumericas
    val char: Char = 'a'
    val char2 = 'b'

    val name: String = "Manuel"
    val lastName = "Duarte"

    /// Variables booleanas
    val isTrue: Boolean = true
    val isFalse = false
}

/**
 * Funciones con parametros
 * */

fun ageCurrent(age: Int) {
    println("Tu edad es: $age")
}

/**
 * Funciones con parametros y retorno
 * */
fun sum(a: Int, b: Int): Int {
    return a + b
}