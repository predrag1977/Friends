
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using CommunityToolkit.Mvvm.ComponentModel;
using Friends.Common.Application.Models;
using Friends.Common.Application.UsesCases;

namespace Friends.Common.Application.ViewModels
{
	public partial class FriendsViewModel : ObservableObject
	{
        private readonly GetFriendUseCase _getFriendsUseCase;

        public FriendsViewModel(GetFriendUseCase getFriendsUseCase)
		{
			_getFriendsUseCase = getFriendsUseCase;

			LoadFriendsAsync();
        }

        [ObservableProperty]
        public ObservableCollection<FriendGroup> friendGroupList;

        private async void LoadFriendsAsync()
        {
            var friendList = await _getFriendsUseCase.ExecuteAsync();
            var friendGroups = friendList.GroupBy(x => x.IsFriend)
                .Select(group => new FriendGroup()
                {
                    IsFriend = group.Key,
                    Items = group.ToList()
                });
            FriendGroupList = new ObservableCollection<FriendGroup>(friendGroups);
        }
    }
}

