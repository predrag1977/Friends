package com.friends.presentation.ui.navigationhost

import android.content.Context
import androidx.compose.runtime.Composable
import androidx.compose.ui.platform.LocalContext
import androidx.navigation.NavHostController
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable
import androidx.navigation.compose.rememberNavController
import com.friends.presentation.ui.screens.FriendDetailsScreen
import com.friends.presentation.ui.screens.FriendsScreen


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
        composable(Routes.FRIENDS_DETAILS_ROUTE) {
            FriendDetailsScreen()
        }
    }
}