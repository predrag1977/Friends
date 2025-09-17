package com.friends.presentation.usecases

import com.friends.domain.interfaces.IFriendsRepository
import com.friends.presentation.mapper.toFriendUiList
import com.friends.presentation.models.FriendUi
import javax.inject.Inject


class GetFriendUseCase @Inject constructor(
    private val friendsRepository: IFriendsRepository
){
    suspend fun executeAsync(): List<FriendUi> {
        val friendList = friendsRepository.getFriendsAsync()
        return friendList.toFriendUiList()
    }
}