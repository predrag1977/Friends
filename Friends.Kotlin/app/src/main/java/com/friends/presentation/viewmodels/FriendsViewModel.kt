package com.friends.presentation.viewmodels

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.friends.presentation.models.FriendUi
import com.friends.presentation.usecases.GetFriendUseCase
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch
import javax.inject.Inject

@HiltViewModel
class FriendsViewModel @Inject constructor(
    private val getFriendUseCase: GetFriendUseCase
) : ViewModel() {
    private val _friends = MutableStateFlow<List<FriendUi>>(emptyList())
    val friends: StateFlow<List<FriendUi>> = _friends

    private val _friendGroups = MutableStateFlow<Map<Boolean,List<FriendUi>>>(emptyMap())
    val friendGroups : StateFlow<Map<Boolean,List<FriendUi>>> = _friendGroups

    init {
        loadData()
    }

    private fun loadData() {
        viewModelScope.launch {
            val friendList = getFriendUseCase.executeAsync()
            _friends.update { friendList }
            _friendGroups.update { friendList.groupBy { it.isFriend } }
        }
    }

    fun searchFriends(text: String) {
        val filteredFriends = _friends.value.filter {
            it.fullName.contains(text, ignoreCase = true)
        }
        _friendGroups.update {
            filteredFriends.groupBy { it.isFriend }
        }
    }
}