using AutoMapper;
using Friends.Common.Domain.Interfaces;
using Friends.Common.UI.Models;

namespace Friends.Common.Application.UsesCases
{
	public class GetFriendCacheUseCase
	{
        private readonly IFriendCacheRepository _friendCacheRepository;
        private readonly IMapper _mapper;

        public GetFriendCacheUseCase(IFriendCacheRepository friendCacheRepository, IMapper mapper)
		{
            _friendCacheRepository = friendCacheRepository;
			_mapper = mapper;
        }

		public FriendUI Execute(string id)
		{
			var friend = _friendCacheRepository.GetFriendById(id);
			return _mapper.Map<FriendUI>(friend);
        }
	}
}

