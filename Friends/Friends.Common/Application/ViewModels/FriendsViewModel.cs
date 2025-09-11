
using System;
using System.Collections.Generic;
using System.Linq;
using CommunityToolkit.Mvvm.ComponentModel;
using Friends.Common.Application.Models;
using Friends.Common.Application.UsesCases;
using Friends.Common.Domain.Models;

namespace Friends.Common.Application.ViewModels
{
    public partial class FriendsViewModel : ObservableObject
    {
        private readonly GetFriendUseCase _getFriendsUseCase;

        public Action<string> SearchTextChanged = (searchText) => SearchTextChangedAction(searchText);

        [ObservableProperty]
        public List<FriendGroup> friendGroupList;

        public FriendsViewModel(GetFriendUseCase getFriendsUseCase)
        {
            _getFriendsUseCase = getFriendsUseCase;

            LoadFriendsAsync();
        }

        private async void LoadFriendsAsync()
        {
            var friendList = await _getFriendsUseCase.ExecuteAsync();
            SetFriendGroupList(friendList);
        }

        private void SetFriendGroupList(List<Friend> friendList)
        {
            FriendGroupList = friendList.GroupBy(x => x.IsFriend)
                .Select(group => new FriendGroup()
                {
                    IsFriend = group.Key,
                    Items = group.ToList()
                })
                .OrderByDescending(x=>x.IsFriend)
                .ToList();
        }

        private static void SearchTextChangedAction(string searchText)
        {
            //TODO: Imlement Action with searching friends
        }
    }
}

