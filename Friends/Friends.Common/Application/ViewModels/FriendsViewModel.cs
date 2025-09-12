
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

        [ObservableProperty]
        public List<Friend> allFriendList;

        [ObservableProperty]
        public List<FriendGroup> friendGroupList;

        [ObservableProperty]
        public string searchText;

        public FriendsViewModel(GetFriendUseCase getFriendsUseCase)
        {
            _getFriendsUseCase = getFriendsUseCase;

            LoadFriendsAsync();
        }

        private async void LoadFriendsAsync()
        {
            AllFriendList = await _getFriendsUseCase.ExecuteAsync();
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

        partial void OnAllFriendListChanged(List<Friend> value)
        {
            SetFriendGroupList(value);
        }

        partial void OnSearchTextChanged(string value)
        {
            var filteredList = AllFriendList
                .Where(x => x.FirstName.StartsWith(value, StringComparison.OrdinalIgnoreCase) ||
                x.LastName.StartsWith(value, StringComparison.OrdinalIgnoreCase) ||
                x.NickName.StartsWith(value, StringComparison.OrdinalIgnoreCase)).ToList();
            SetFriendGroupList(filteredList);
        }
    }
}

