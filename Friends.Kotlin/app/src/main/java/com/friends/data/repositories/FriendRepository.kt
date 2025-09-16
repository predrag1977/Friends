package com.friends.data.repositories

import com.friends.data.mappers.toFriendList
import com.friends.domain.interfaces.IApiService
import com.friends.domain.interfaces.IFriendRepository
import com.friends.domain.models.Friend
import javax.inject.Inject

class FriendRepository @Inject constructor(
    private val apiService: IApiService
) : IFriendRepository {
    override suspend fun getFriendsAsync(): List<Friend> {
        return apiService.getFriendsResponse().toFriendList()
    }
}