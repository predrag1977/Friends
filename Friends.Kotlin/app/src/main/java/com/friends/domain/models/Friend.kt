package com.friends.domain.models

import java.time.Instant

data class Friend (
    val id: String,
    val firstName: String,
    val lastName: String,
    val isFriend: Boolean,
    val dateOfBirth: String,
    val nickName: String
)
