using System;
using System.Net.Http;
using System.Threading.Tasks;
using Friends.Common.Data.Cache;
using Friends.Common.Domain.Interfaces;
using Friends.Common.Domain.Models;

namespace Friends.Common.Data.Repositories
{
	public class FriendDetailsRepository : IFriendDetailsRepository
    {
        private readonly HttpClient _httpClient;
        private readonly IFriendCache _friendCache;

        public FriendDetailsRepository(HttpClient httpClient, IFriendCache friendCache)
		{
            _httpClient = httpClient;
            _friendCache = friendCache;
        }

        public Task<Friend> GetFriendByIdAsync(int id)
        {
            //TODO: Implement get Friend from Api
            throw new NotImplementedException();
        }

        public async Task<Friend> GetFriendFromCacheAsync(string id)
        {
            return await Task.FromResult(_friendCache.GetFriendById(id));
        }
    }
}

