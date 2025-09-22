package com.friends.presentation.viewmodels

import androidx.lifecycle.SavedStateHandle
import androidx.lifecycle.ViewModel
import com.friends.presentation.models.FriendUi
import com.friends.presentation.ui.navigationhost.Arguments.FRIEND_ID
import com.friends.presentation.ui.states.FriendStates
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.update
import javax.inject.Inject

@HiltViewModel
class FriendDetailsViewModel @Inject constructor(
    savedStateHandle: SavedStateHandle
) : ViewModel() {
    val friendId : String = checkNotNull(savedStateHandle[FRIEND_ID])
    val friends = FriendStates.friends

    val _friend = MutableStateFlow<FriendUi?>(null)
    val friend: StateFlow<FriendUi?> = _friend

    init {
        loadFriendDetails(friendId)
    }

    private fun loadFriendDetails(friendId: String) {
        _friend.update {
            friends.find { it.id == friendId }
        }
    }
}