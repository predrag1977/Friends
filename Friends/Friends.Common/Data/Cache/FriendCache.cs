using System;
using System.Collections.Generic;
using System.Linq;
using Friends.Common.Domain.Interfaces;
using Friends.Common.Domain.Models;

namespace Friends.Common.Data.Cache
{
	public class FriendCache : IFriendCache
	{
        public List<Friend> Friends { get; set; }

        public Friend GetFriendById(string id)
        {
            return Friends.FirstOrDefault(x => x.Id == id);
        }

        public void SetFriends(List<Friend> friends)
        {
            Friends = friends ?? new List<Friend>();
        }
    }
}

