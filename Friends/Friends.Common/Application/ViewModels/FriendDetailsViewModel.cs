using System.Threading.Tasks;
using CommunityToolkit.Mvvm.ComponentModel;
using Friends.Common.Application.Models;
using Friends.Common.Application.UsesCases;

namespace Friends.Common.Application.ViewModels
{
	public partial class FriendDetailsViewModel : ObservableObject
	{
        private readonly GetFriendCacheUseCase _getFriendCacheUseCase;

        public FriendDetailsViewModel(GetFriendCacheUseCase getFriendCacheUseCase)
		{
            _getFriendCacheUseCase = getFriendCacheUseCase;
        }

        [ObservableProperty]
        public FriendUI friend;

        public async void LoadAsync(string id)
		{
            Friend = _getFriendCacheUseCase.Execute(id);
            await Task.CompletedTask;
        }

        public void ChangeIsFriend()
        {
            Friend.IsFriend = !Friend.IsFriend;
            OnPropertyChanged();
        }
    }
}

