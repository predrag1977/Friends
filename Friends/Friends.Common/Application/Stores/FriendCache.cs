using System.Collections.Generic;
using System.Linq;
using Friends.Common.Application.Interfaces;
using Friends.Common.UI.Models;

namespace Friends.Common.Application.Stores
{
    public class FriendCache : IFriendCache
    {
        public List<FriendUI> Friends { get; set; }

        public FriendUI GetFriendById(string id)
        {
            return Friends.FirstOrDefault(x => x.Id == id);
        }

        public void SetFriends(List<FriendUI> friends)
        {
            Friends = friends ?? new List<FriendUI>();
        }
    }
}

