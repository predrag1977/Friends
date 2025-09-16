package com.friends.domain.interfaces

import com.friends.data.models.FriendResponse
import retrofit2.http.GET

interface IApiService {
    @GET("/golf/friends.json")
    suspend fun getFriendsResponse(): FriendResponse
}