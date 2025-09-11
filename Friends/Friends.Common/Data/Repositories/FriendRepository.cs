using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Json;
using System.Threading;
using System.Threading.Tasks;
using AutoMapper;
using Friends.Common.Data.Models;
using Friends.Common.Domain.Interfaces;
using Friends.Common.Domain.Models;
using Friends.Common.Domain.Responses;

namespace Friends.Common.Data.Repositories
{
	public class FriendRepository : IFriendRepository
	{
        private readonly HttpClient _httpClient;
        private readonly IFriendCache _friendCache;
        private readonly IMapper _mapper;

        public FriendRepository(HttpClient httpClient, IFriendCache friendCache, IMapper mapper)
		{
            _httpClient = httpClient;
            _friendCache = friendCache;
            _mapper = mapper;
        }

        public async Task<List<Friend>> GetFriendsAsync(CancellationToken ct = default)
        {
            try
            {
                var friendResponse = await _httpClient.GetFromJsonAsync<FriendResponse>("golf/friends.json", ct);
                var apiFriends = friendResponse?.Friends ?? new List<ApiFriend>();
                var friends = _mapper.Map<List<Friend>>(apiFriends);
                _friendCache.SetFriends(friends);
                return friends;
            }
            catch(Exception ex)
            {
                Console.WriteLine(ex);
                return new List<Friend>();
            }
        }
    }
}

