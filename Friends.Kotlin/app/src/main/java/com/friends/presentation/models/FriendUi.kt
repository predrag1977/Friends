package com.friends.presentation.models

import java.time.LocalDate

data class FriendUi(
    val id: String,
    val firstName: String,
    val lastName: String,
    val birthDate: LocalDate,
    val nickName: String,
    val age: String,
    val fullName: String
)
