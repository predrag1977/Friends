package com.friends.presentation.ui.components

import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import com.friends.presentation.models.FriendUi

@Composable
fun FriendItem(friend: FriendUi) {
    Text(text = friend.fullName)
    Text(text = friend.age)
}