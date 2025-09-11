using CommunityToolkit.Mvvm.ComponentModel;
using Friends.Common.Application.UsesCases;
using Friends.Common.Domain.Models;

namespace Friends.Common.Application.ViewModels
{
	public partial class FriendDetailsViewModel : ObservableObject
	{
        private readonly GetFriendCacheUseCase _getFriendCacheUseCase;

        [ObservableProperty]
        public Friend? friend;

        public FriendDetailsViewModel(GetFriendCacheUseCase getFriendCacheUseCase)
		{
            _getFriendCacheUseCase = getFriendCacheUseCase;
        }

        public async void LoadAsync(string id)
		{
            Friend = await _getFriendCacheUseCase.ExecuteAsync(id);
        }
	}
}

