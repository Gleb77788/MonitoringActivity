package com.example.myapplication.retrofit

import retrofit2.http.GET
import retrofit2.http.Path

interface PersonApi {
    @GET("People/{id}")
    suspend fun getPerson(@Path("id") id: Int?): Person


}