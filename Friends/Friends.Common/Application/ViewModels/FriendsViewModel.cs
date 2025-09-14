using System;
using System.Collections.Generic;
using System.ComponentModel;
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

        private List<Friend> _allFriendList = new List<Friend>();

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
            _allFriendList = await _getFriendsUseCase.ExecuteAsync();
            SetFriendGroupList(_allFriendList);
        }

        private void SetFriendGroupList(List<Friend> friendList)
        {
            FriendGroupList = friendList
                .OrderBy(x=>x.FullName)
                .GroupBy(x => x.IsFriend)
                .Select(group => new FriendGroup()
                {
                    IsFriend = group.Key,
                    Items = group.ToList()
                })
                .OrderBy(x=>x.IsFriend)
                .ToList();
        }

        partial void OnSearchTextChanged(string value)
        {
            var filteredList = _allFriendList.Where(x =>
                x.FirstName.StartsWith(value, StringComparison.OrdinalIgnoreCase) ||
                x.LastName.StartsWith(value, StringComparison.OrdinalIgnoreCase) ||
                x.NickName.StartsWith(value, StringComparison.OrdinalIgnoreCase)).ToList();
            SetFriendGroupList(filteredList);
        }

        public void ChangeIsFriend(Friend friend)
        {
            _allFriendList.Find(x => x.Id == friend.Id).IsFriend = !friend.IsFriend;
            SetFriendGroupList(_allFriendList);
        }
    }
}

