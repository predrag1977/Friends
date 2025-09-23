package com.friends.presentation.ui.navigationhost

import androidx.compose.runtime.Composable
import androidx.navigation.NavHostController
import androidx.navigation.NavType
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable
import androidx.navigation.compose.rememberNavController
import androidx.navigation.navArgument
import com.friends.presentation.ui.navigationhost.Arguments.FRIEND_ID
import com.friends.presentation.ui.navigationhost.Routes.FRIENDS_DETAILS_ROUTE
import com.friends.presentation.ui.navigationhost.Routes.FRIENDS_ROUTE
import com.friends.presentation.ui.screens.FriendDetailsScreen
import com.friends.presentation.ui.screens.FriendsScreen


@Composable
fun FriendsNavigationHost(
    navController: NavHostController = rememberNavController(),
    startDestination: String = FRIENDS_ROUTE
){
    NavHost(navController, startDestination) {
        composable(FRIENDS_ROUTE) {
            FriendsScreen(
                onFriendItemClick = { friendId->
                    navController.navigate("$FRIENDS_DETAILS_ROUTE/${friendId}")
                }
            )
        }
        composable("$FRIENDS_DETAILS_ROUTE/{$FRIEND_ID}",
            arguments = listOf(
                navArgument(FRIEND_ID) { type = NavType.StringType }
            )
        ) {
            FriendDetailsScreen(
                onBackClick = {
                    if(navController.previousBackStackEntry != null) {
                        navController.navigateUp()
                    }
                }
            )
        }
    }
}