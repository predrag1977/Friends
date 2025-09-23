package com.friends.presentation.ui.screens

import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.ui.Modifier
import androidx.hilt.lifecycle.viewmodel.compose.hiltViewModel
import com.friends.presentation.viewmodels.FriendDetailsViewModel

@Composable
fun FriendDetailsScreen(
    onBackClick: () -> Unit,
    viewModel: FriendDetailsViewModel = hiltViewModel()
) {
    val friend by viewModel.friend.collectAsState()

    Scaffold(
        content = { paddingValues ->
            Column (
                modifier = Modifier.padding(paddingValues)
            ) {
                friend?.let { friend ->
                    Text(text = friend.fullName)
                    Text(text = friend.age)
                    Text(text = friend.nickName)
                }
            }
        }
    )
}