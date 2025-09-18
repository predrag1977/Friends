package com.friends.data.models

import com.squareup.moshi.JsonClass
import java.time.Instant

@JsonClass(generateAdapter = true)
data class ApiFriend(
    val firstName: String,
    val lastName: String,
    val dateOfBirth: Instant?,
    val nickName: String
)
