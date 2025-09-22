using System.Threading.Tasks;
using CommunityToolkit.Mvvm.ComponentModel;
using Friends.Common.UI.Models;
using Friends.Common.Application.UsesCases;
using System.Linq;
using Friends.Common.UI.Interfaces;
using Friends.Common.UI.Services;

namespace Friends.Common.UI.ViewModels
{
	public partial class FriendDetailsViewModel : ObservableObject
	{
        private readonly GetFriendCacheUseCase _getFriendCacheUseCase;
        private readonly IFriendUIStateService _friendUIStateService;

        public FriendDetailsViewModel(GetFriendCacheUseCase getFriendCacheUseCase, IFriendUIStateService friendUIStateService)
		{
            _getFriendCacheUseCase = getFriendCacheUseCase;
            _friendUIStateService = friendUIStateService;
        }

        [ObservableProperty]
        public FriendUI friend;

        public async void LoadAsync(string id)
		{
            Friend = _friendUIStateService.AllFriends.FirstOrDefault(x=>x.Id == id);
            await Task.CompletedTask;
        }

        public void ChangeIsFriend()
        {
            Friend.IsFriend = !Friend.IsFriend;
            OnPropertyChanged();
        }
    }
}

