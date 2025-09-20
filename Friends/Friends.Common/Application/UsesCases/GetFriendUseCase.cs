using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;
using AutoMapper;
using Friends.Common.Application.Interfaces;
using Friends.Common.Domain.Interfaces;
using Friends.Common.UI.Models;

namespace Friends.Common.Application.UsesCases
{
	public class GetFriendUseCase
	{
        private readonly IFriendRepository _friendRepository;
        private readonly IFriendCache _friendCache;
        private readonly IMapper _mapper;

        public GetFriendUseCase(IFriendRepository friendRepository, IFriendCache friendCache, IMapper mapper)
		{
			_friendRepository = friendRepository;
			_friendCache = friendCache;
            _mapper = mapper;
        }

		public async Task<List<FriendUI>> ExecuteAsync(CancellationToken ct = default)
		{
			var friendList = await _friendRepository.GetFriendsAsync(ct);
			var friendUIList = _mapper.Map<List<FriendUI>>(friendList);
			_friendCache.SetFriends(friendUIList);
            return friendUIList;
        }
	}
}

