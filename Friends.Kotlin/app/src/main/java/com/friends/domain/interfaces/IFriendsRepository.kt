package com.friends.domain.interfaces

import com.friends.domain.models.Friend

interface IFriendsRepository {
    suspend fun getFriendsAsync(): List<Friend>
}