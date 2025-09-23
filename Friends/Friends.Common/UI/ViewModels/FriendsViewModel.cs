using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using CommunityToolkit.Mvvm.ComponentModel;
using Friends.Common.UI.Models;
using Friends.Common.Application.UsesCases;
using System.Threading.Tasks;
using Friends.Common.UI.Interfaces;

namespace Friends.Common.UI.ViewModels
{
    public partial class FriendsViewModel : ObservableObject
    {
        private readonly GetFriendUseCase _getFriendsUseCase;
        private readonly IFriendUIStateService _friendUIStateService;

        [ObservableProperty]
        private List<FriendGroup> friendGroupList = new List<FriendGroup>();

        [ObservableProperty]
        private string searchText = "";

        public FriendsViewModel(GetFriendUseCase getFriendsUseCase, IFriendUIStateService friendUIStateService)
        {
            _getFriendsUseCase = getFriendsUseCase;
            _friendUIStateService = friendUIStateService;

            _ = LoadFriendsAsync();
        }

        public async Task LoadFriendsAsync()
        {
            _friendUIStateService.AllFriends = await _getFriendsUseCase.ExecuteAsync();
            _friendUIStateService.AllFriends.ForEach(friendUI =>
            {
                friendUI.PropertyChanged -= FriendUI_PropertyChanged;
                friendUI.PropertyChanged += FriendUI_PropertyChanged;
            });
            SetFriendGroupList(_friendUIStateService.AllFriends, SearchText);
        }

        private void SetFriendGroupList(List<FriendUI> allFriendList, string searchText)
        {
            var filteredList = allFriendList.Where(x =>
                x.FirstName.StartsWith(searchText, StringComparison.OrdinalIgnoreCase) ||
                x.LastName.StartsWith(searchText, StringComparison.OrdinalIgnoreCase) ||
                x.NickName.StartsWith(searchText, StringComparison.OrdinalIgnoreCase)).ToList();

            FriendGroupList = filteredList
                .OrderBy(x => x.FullName)
                .GroupBy(x => x.IsFriend)
                .Select(group => new FriendGroup()
                {
                    IsFriend = group.Key,
                    Items = group.ToList()
                })
                .OrderBy(x => x.IsFriend)
                .ToList();
        }

        private void FriendUI_PropertyChanged(object sender, PropertyChangedEventArgs e)
        {
            SetFriendGroupList(_friendUIStateService.AllFriends, SearchText);
        }

        partial void OnSearchTextChanged(string value)
        {
            SetFriendGroupList(_friendUIStateService.AllFriends, value);
        }
    }
}

