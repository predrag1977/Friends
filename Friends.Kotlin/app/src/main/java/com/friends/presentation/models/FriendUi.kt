package com.friends.presentation.models

import java.time.LocalDateTime

data class FriendUi(
    val id: String,
    val firstName: String,
    val lastName: String,
    val dateOfBirth: LocalDateTime,
    val nickName: String,
    val age: String,
    val fullName: String
)
