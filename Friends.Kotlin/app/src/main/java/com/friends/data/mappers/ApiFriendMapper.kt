package com.friends.data.mappers

import com.friends.data.models.ApiFriend
import com.friends.domain.models.Friend
import java.util.UUID

fun ApiFriend.toDomain(): Friend {
    return Friend(
        id = UUID.randomUUID().toString(),
        firstName = firstName,
        lastName = lastName,
        isFriend = isFriend,
        dateOfBirth = dateOfBirth,
        nickName = nickName,
        profilePictureUrl = profilePictureUrl
    )
}

fun List<ApiFriend>.toFriendList() : List<Friend> {
    return this.map { it.toDomain() }
}