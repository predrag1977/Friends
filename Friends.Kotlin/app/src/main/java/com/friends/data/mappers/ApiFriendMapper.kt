package com.friends.data.mappers

import com.friends.data.models.ApiFriend
import com.friends.data.models.FriendResponse
import com.friends.domain.models.Friend
import java.time.LocalDateTime
import java.util.UUID


fun ApiFriend.toDomain(): Friend {
    return Friend(
        id = UUID.randomUUID().toString(),
        firstName = firstName,
        lastName = lastName,
        dateOfBirth = LocalDateTime.parse(dateOfBirth),
        nickName = nickName
    )
}

fun FriendResponse.toFriendList() : List<Friend> {
    return friends.map { it.toDomain() }
}