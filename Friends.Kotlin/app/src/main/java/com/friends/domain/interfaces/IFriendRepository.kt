package com.friends.domain.interfaces

import com.friends.domain.models.Friend

interface IFriendRepository {
    suspend fun getFriendsAsync(): List<Friend>
}