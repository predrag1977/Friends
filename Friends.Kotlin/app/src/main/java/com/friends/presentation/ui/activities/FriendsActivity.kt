package com.friends.presentation.ui.activities

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.navigation.compose.rememberNavController
import com.friends.presentation.ui.navigationhost.FriendsNavigationHost
import com.friends.presentation.ui.theme.FriendsTheme
import dagger.hilt.android.AndroidEntryPoint

@AndroidEntryPoint
class FriendsActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()
        setContent {
            FriendsTheme {
                FriendsNavigationHost(
                    rememberNavController()
                )
            }
        }
    }
}