using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Net.Http.Json;
using System.Threading;
using System.Threading.Tasks;
using AutoMapper;
using Friends.Common.Data.Models;
using Friends.Common.Data.Responses;
using Friends.Common.Domain.Interfaces;
using Friends.Common.Domain.Models;

namespace Friends.Common.Data.Repositories
{
	public class FriendRepository : IFriendRepository
	{
        private readonly HttpClient _httpClient;
        private readonly IMapper _mapper;

        public FriendRepository(HttpClient httpClient, IMapper mapper)
		{
            _httpClient = httpClient;
            _mapper = mapper;
        }

        public async Task<List<Friend>> GetFriendsAsync(CancellationToken ct = default)
        {
            try
            {
                var friendResponse = await _httpClient.GetFromJsonAsync<FriendResponse>("golf/friends.json", ct);
                var apiFriends = friendResponse?.Friends ?? new List<ApiFriend>();
                var friends = _mapper.Map<List<Friend>>(apiFriends);
                return friends;
            }
            catch(Exception ex)
            {
                Console.WriteLine(ex);
                return new List<Friend>();
            }
        }

        //public async Task<bool> PostFriendsAsync(Friend friend, CancellationToken ct = default)
        //{
        //    try
        //    {
        //        var friendResponse = await _httpClient.PostAsJsonAsync("golf/friends.json", friend, ct);
        //        return friendResponse.IsSuccessStatusCode;
        //    }
        //    catch (Exception ex)
        //    {
        //        Console.WriteLine(ex);
        //        return false;
        //    }
        //}
    }
}

