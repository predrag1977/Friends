package com.friends.presentation.mapper

import com.friends.domain.models.Friend
import com.friends.presentation.models.FriendUi
import java.time.LocalDateTime
import java.time.temporal.ChronoUnit

fun Friend.toUi(): FriendUi {
    return FriendUi(
        id = id,
        firstName = firstName,
        lastName = lastName,
        dateOfBirth = dateOfBirth,
        nickName = nickName,
        age = ChronoUnit.YEARS.between(dateOfBirth, LocalDateTime.now()).toString(),
        fullName = "$firstName $lastName"
    )
}

fun List<Friend>.toFriendUiList(): List<FriendUi> {
    return this.map { it.toUi() }
}