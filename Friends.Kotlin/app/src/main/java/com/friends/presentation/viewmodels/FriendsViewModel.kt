package com.friends.presentation.viewmodels

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.friends.presentation.models.FriendUi
import com.friends.presentation.usecases.GetFriendUseCase
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch
import javax.inject.Inject

class FriendsViewModel @Inject constructor(
    private val getFriendUseCase: GetFriendUseCase
) : ViewModel() {
    private val _friends = MutableStateFlow<List<FriendUi>>(emptyList())
    val friends: StateFlow<List<FriendUi>> = _friends

    init {
        loadData()
    }

    private fun loadData() {
        viewModelScope.launch {
            val friendList = getFriendUseCase.executeAsync()
            _friends.update{friendList}
        }
    }
}