using Friends.Common.Domain.Interfaces;
using Friends.Common.Domain.Models;

namespace Friends.Common.Application.UsesCases
{
	public class GetFriendCacheUseCase
	{
        private readonly IFriendDetailsRepository _friendDetailsRepository;

        public GetFriendCacheUseCase(IFriendDetailsRepository friendDetailsRepository)
		{
            _friendDetailsRepository = friendDetailsRepository;
        }

		public async Task<Friend> ExecuteAsync(string id)
		{
			return await _friendDetailsRepository.GetFriendFromCacheAsync(id);
        }
	}
}

