using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Json;
using System.Threading;
using System.Threading.Tasks;
using Friends.Common.Domain.Interfaces;
using Friends.Common.Domain.Models;
using Friends.Common.Domain.Responses;

namespace Friends.Common.Data.Repositories
{
	public class FriendRepository : IFriendRepository
	{
        private readonly HttpClient _httpClient;

        public FriendRepository(HttpClient httpClient)
		{
            _httpClient = httpClient;
        }

        public async Task<List<Friend>> GetFriendsAsync(CancellationToken ct = default)
        {
            try
            {
                var friendResponse = await _httpClient.GetFromJsonAsync<FriendResponse>("golf/friends.json", ct);
                return friendResponse?.Friends ?? new List<Friend>();
            }
            catch(Exception ex)
            {
                Console.WriteLine(ex);
                return new List<Friend>();
            }
        }
    }
}

