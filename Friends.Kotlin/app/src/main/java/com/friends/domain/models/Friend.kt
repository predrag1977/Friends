package com.friends.domain.models

import java.time.LocalDateTime

data class Friend (
    val id: String,
    val firstName: String,
    val lastName: String,
    val dateOfBirth: LocalDateTime,
    val nickName: String
)
