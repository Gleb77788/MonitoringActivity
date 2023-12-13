package com.example.myapplication.retrofit

data class Person(
    val id: Int,
    val firstname: String,
    val lastname: String,
    val email: String,
    val login: String,
    val password: String,
    val phones: List<Int>

)
