package com.friends.presentation.ui.screens

import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier

@Composable
fun FriendDetailsScreen() {
    Scaffold(
        content = { paddingValues ->
            Column (modifier = Modifier.padding(paddingValues)) {
                Text(text = "HELLO WORLD")
                Text(text = "HELLO WORLD")
            }
        }
    )
}