using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using CommunityToolkit.Mvvm.ComponentModel;
using Friends.Common.Application.UsesCases;
using Friends.Common.Domain.Models;

namespace Friends.Common.Application.ViewModels
{
	public partial class FriendsViewModel : ObservableObject
	{
        private readonly GetFriendUseCase _getFriendsUseCase;

        public FriendsViewModel(GetFriendUseCase getFriendsUseCase)
		{
			_getFriendsUseCase = getFriendsUseCase;

			_ = LoadFriendsAsync();
        }

        [ObservableProperty]
        public List<Friend> friendList;

        private async Task LoadFriendsAsync()
        {
            FriendList = await _getFriendsUseCase.ExecuteAsync();
        }
    }
}

