package com.friends.presentation.ui.navigationhost

import android.content.Context
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.navigation.NavHostController
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable
import androidx.navigation.compose.rememberNavController

@Composable
fun FriendsNavigationHost(
    navController: NavHostController = rememberNavController(),
    startDestination: String = Routes.FRIENDS_ROUTE,
    context : Context = LocalContext.current
){
    NavHost(navController, startDestination) {
        composable(Routes.FRIENDS_ROUTE) {
            FriendsScreen()
        }
    }
}

@Composable
fun FriendsScreen() {
    Scaffold (
        topBar = {}
    ) { paddingValues ->
        Column( modifier = Modifier.padding(paddingValues)) {
            Text(text = "HELLO WORLD")
        }
    }
}