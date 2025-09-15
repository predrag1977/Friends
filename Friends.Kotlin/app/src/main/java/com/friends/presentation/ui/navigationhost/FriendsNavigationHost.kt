package com.friends.presentation.ui.navigationhost

import androidx.compose.runtime.Composable
import androidx.navigation.NavHostController
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable

@Composable
fun FriendsNavigationHost(
    navController: NavHostController,
    startDestination: String = Routes.FRIENDS_ROUTE
){
    NavHost(navController, startDestination) {
        composable(Routes.FRIENDS_ROUTE) {
            FriendsScreen()
        }
    }
}

@Composable
fun FriendsScreen() {
    TODO("Not yet implemented")
}