package com.friends.presentation.mapper

import com.friends.domain.models.Friend
import com.friends.presentation.models.FriendUi
import java.time.Instant
import java.time.LocalDate
import java.time.Period
import java.time.ZoneId

fun Friend.toUi(): FriendUi {
    val birthDate = Instant.parse(dateOfBirth).atZone(ZoneId.systemDefault()).toLocalDate()
    val currentAge = Period.between(birthDate, LocalDate.now()).years.toString()

    return FriendUi(
        id = id,
        firstName = firstName,
        lastName = lastName,
        isFriend = isFriend,
        birthDate = birthDate,
        nickName = nickName,
        age = currentAge,
        fullName = "$firstName $lastName",
        profilePictureUrl = profilePictureUrl
    )
}

fun List<Friend>.toFriendUiList(): List<FriendUi> {
    return this.map { it.toUi() }
}