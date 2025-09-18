package com.friends.presentation.models

import java.time.LocalDate

data class FriendUi(
    val id: String,
    val firstName: String,
    val lastName: String,
    val isFriend: Boolean,
    val nickName: String,
    val birthDate: LocalDate,
    val age: String,
    val fullName: String
)
