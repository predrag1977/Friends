using System;
using System.Net.Http;
using System.Threading.Tasks;
using Friends.Common.Domain.Interfaces;
using Friends.Common.Domain.Models;

namespace Friends.Common.Data.Repositories
{
	public class FriendDetailsRepository : IFriendDetailsRepository
    {
        private readonly HttpClient _httpClient;

        public FriendDetailsRepository(HttpClient httpClient)
		{
            _httpClient = httpClient;
        }

        public Task<Friend> GetFriendByIdAsync(int id)
        {
            //TODO: Implement get Friend from Api
            throw new NotImplementedException();
        }
    }
}

