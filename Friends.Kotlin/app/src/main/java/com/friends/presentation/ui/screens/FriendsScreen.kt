package com.friends.presentation.ui.screens

import androidx.compose.material3.Text
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Scaffold
import androidx.compose.runtime.Composable
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.hilt.lifecycle.viewmodel.compose.hiltViewModel
import com.friends.presentation.ui.components.FriendItem
import com.friends.presentation.viewmodels.FriendsViewModel

@Composable
fun FriendsScreen(
    viewModel: FriendsViewModel = hiltViewModel()
) {
    val friendGroups by viewModel.friendGroups.collectAsState()

    Scaffold(
        topBar = { },
        bottomBar = { },
        floatingActionButton = { },
        content = { paddingValues ->
            Column(modifier = Modifier.padding(paddingValues)) {

                LazyColumn(
                    modifier = Modifier.fillMaxSize()
                ) {
                    friendGroups.forEach { (isFriend, friends) ->
                        item {
                            Text(
                                text = if (isFriend) "Friends" else "Recently Played",
                                color = MaterialTheme.colorScheme.primary,
                                style = MaterialTheme.typography.bodyMedium,
                                maxLines = 1,
                                overflow = TextOverflow.Ellipsis,
                                modifier = Modifier
                                    .fillMaxWidth()
                                    .padding(start = 16.dp, top = 8.dp)
                            )
                        }
                        items(friends) { friend ->
                            FriendItem(friend)
                        }
                    }
                }
            }
        }
    )
}