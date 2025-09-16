package com.friends.data.repositories

import com.friends.data.mappers.toFriendList
import com.friends.domain.interfaces.IFriendsApi
import com.friends.domain.interfaces.IFriendsRepository
import com.friends.domain.models.Friend
import javax.inject.Inject

class FriendsRepository @Inject constructor(
    private val friendsApi: IFriendsApi
) : IFriendsRepository {
    override suspend fun getFriendsAsync(): List<Friend> {
        return friendsApi.getFriendsResponse().toFriendList()
    }
}