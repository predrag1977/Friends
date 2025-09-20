using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using CommunityToolkit.Mvvm.ComponentModel;
using Friends.Common.UI.Models;
using Friends.Common.Application.UsesCases;

namespace Friends.Common.UI.ViewModels
{
    public partial class FriendsViewModel : ObservableObject
    {
        private readonly GetFriendUseCase _getFriendsUseCase;

        private List<FriendUI> _allFriendList = new List<FriendUI>();

        [ObservableProperty]
        public List<FriendGroup> friendGroupList = new List<FriendGroup>();

        [ObservableProperty]
        public string searchText = "";

        public FriendsViewModel(GetFriendUseCase getFriendsUseCase)
        {
            _getFriendsUseCase = getFriendsUseCase;

            LoadFriendsAsync();
        }

        private async void LoadFriendsAsync()
        {
            _allFriendList = await _getFriendsUseCase.ExecuteAsync();
            _allFriendList.ForEach(friendUI =>
            {
                friendUI.PropertyChanged -= FriendUI_PropertyChanged;
                friendUI.PropertyChanged += FriendUI_PropertyChanged;
            });
            SetFriendGroupList(_allFriendList, SearchText);
        }

        private void FriendUI_PropertyChanged(object sender, PropertyChangedEventArgs e)
        {
            if(e.PropertyName == nameof(FriendUI.IsFriend))
            {
                SetFriendGroupList(_allFriendList, SearchText);
            }
        }

        private void SetFriendGroupList(List<FriendUI> allFriendList, string searchText)
        {
            var filteredList = allFriendList.Where(x =>
                x.FirstName.StartsWith(searchText, StringComparison.OrdinalIgnoreCase) ||
                x.LastName.StartsWith(searchText, StringComparison.OrdinalIgnoreCase) ||
                x.NickName.StartsWith(searchText, StringComparison.OrdinalIgnoreCase)).ToList();

            FriendGroupList = filteredList
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
            SetFriendGroupList(_allFriendList, value);
        }
    }
}

