package com.friends.presentation.ui.components

import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import coil.compose.AsyncImage
import com.friends.presentation.models.FriendUi

@Composable
fun FriendItem(
    friend: FriendUi,
    onFriendItemClick: (id: String) -> Unit
) {
    Column(
        modifier = Modifier
            .fillMaxWidth()
            .padding(16.dp)
            .clickable {
                onFriendItemClick(friend.id)
            }
    ) {
        AsyncImage(
            model = friend.profilePictureUrl,
            contentDescription = null,
            modifier = Modifier.size(60.dp)
        )
        Text(text = friend.fullName)
        Text(text = friend.age)
        Text(text = if (friend.isFriend) "Friend" else "Recently Played")
        Text(text = friend.nickName)
    }
}