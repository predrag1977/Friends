package com.friends.presentation.ui.screens

import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.ui.Modifier
import androidx.hilt.lifecycle.viewmodel.compose.hiltViewModel
import com.friends.presentation.models.FriendUi
import com.friends.presentation.viewmodels.FriendsViewModel

@Composable
fun FriendsScreen(
    viewModel: FriendsViewModel = hiltViewModel()
) {
    val friends by viewModel.friends.collectAsState()

    Scaffold(
        topBar = { },
        bottomBar = { },
        floatingActionButton = { },
        content = { paddingValues ->
            Column(modifier = Modifier.padding(paddingValues)) {
//                LazyColumn {
//                    items(friends, key = { it.id }, itemContent = { friend ->
//                        FriendItem(friend = friend)
//                    })
//                }
            }
        }
    )
}

@Composable
fun FriendItem(friend: FriendUi) {
    Text(text = friend.fullName)
}