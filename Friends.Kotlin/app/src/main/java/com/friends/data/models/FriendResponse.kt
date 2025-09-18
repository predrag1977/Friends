package com.friends.data.models

import com.squareup.moshi.JsonClass

@JsonClass(generateAdapter = true)
data class FriendResponse(
    val friends: List<ApiFriend>
)
