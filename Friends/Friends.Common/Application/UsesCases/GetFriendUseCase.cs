using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;
using AutoMapper;
using Friends.Common.Domain.Interfaces;
using Friends.Common.UI.Models;

namespace Friends.Common.Application.UsesCases
{
	public class GetFriendUseCase
	{
        private readonly IFriendRepository _friendRepository;
        private readonly IFriendCacheRepository _friendCacheRepository;
        private readonly IMapper _mapper;

        public GetFriendUseCase(IFriendRepository friendRepository, IFriendCacheRepository friendCacheRepository, IMapper mapper)
		{
			_friendRepository = friendRepository;
            _friendCacheRepository = friendCacheRepository;
            _mapper = mapper;
        }

		public async Task<List<FriendUI>> ExecuteAsync(CancellationToken ct = default)
		{
			var friendList = await _friendRepository.GetFriendsAsync(ct);
            _friendCacheRepository.SaveFriends(friendList);
            var friendUIList = _mapper.Map<List<FriendUI>>(friendList);
            return friendUIList;
        }
	}
}

