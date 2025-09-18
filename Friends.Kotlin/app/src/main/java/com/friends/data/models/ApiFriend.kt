package com.friends.data.models

import com.squareup.moshi.JsonClass

@JsonClass(generateAdapter = true)
data class ApiFriend(
    val firstName: String,
    val lastName: String,
    val isFriend: Boolean,
    val dateOfBirth: String,
    val nickName: String
)
