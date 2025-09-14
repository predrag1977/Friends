using AutoMapper;
using Friends.Common.Application.Interfaces;
using Friends.Common.Application.Models;

namespace Friends.Common.Application.UsesCases
{
	public class GetFriendCacheUseCase
	{
        private readonly IFriendCache _friendCache;
        private readonly IMapper _mapper;

        public GetFriendCacheUseCase(IFriendCache friendCache, IMapper mapper)
		{
            _friendCache = friendCache;
			_mapper = mapper;
        }

		public FriendUI Execute(string id)
		{
			var friend = _friendCache.GetFriendById(id);
			return _mapper.Map<FriendUI>(friend);
        }
	}
}

