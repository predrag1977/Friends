package com.friends.presentation.ui.screens

import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.hilt.lifecycle.viewmodel.compose.hiltViewModel
import com.friends.presentation.ui.components.FriendItem
import com.friends.presentation.ui.states.FriendStates
import com.friends.presentation.viewmodels.FriendsViewModel

@Composable
fun FriendsScreen(
    viewModel: FriendsViewModel = hiltViewModel(),
    onFriendItemClick: (friendID: String) -> Unit
) {
    val friendGroups by viewModel.friendGroups.collectAsState()
    var text by remember { mutableStateOf(FriendStates.searchText) }

    Scaffold(
        topBar = { },
        bottomBar = { },
        floatingActionButton = { },
        content = { paddingValues ->
            Column(modifier = Modifier.padding(paddingValues)) {
                OutlinedTextField(
                    value = text,
                    onValueChange = { newText ->
                        text = newText
                        viewModel.searchFriends(newText)
                    },
                    label = {
                        Text("Search Friends")
                            },
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(16.dp)
                )
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
                            FriendItem(
                                friend,
                                onFriendItemClick
                            )
                        }
                    }
                }
            }
        }
    )
}