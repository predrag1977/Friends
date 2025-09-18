package com.friends.data.mappers

import com.friends.data.models.ApiFriend
import com.friends.domain.models.Friend
import java.util.UUID

fun ApiFriend.toDomain(): Friend {
    return Friend(
        id = UUID.randomUUID().toString(),
        firstName = firstName,
        lastName = lastName,
        dateOfBirth = dateOfBirth,
        nickName = nickName
    )
}

fun List<ApiFriend>.toFriendList() : List<Friend> {
    return this.map { it.toDomain() }
}