using System.Collections.Generic;
using System.Linq;
using Friends.Common.Domain.Interfaces;
using Friends.Common.Domain.Models;

namespace Friends.Common.Data.Repositories
{
	public class FriendCacheRepository : IFriendCacheRepository
	{
        private List<Friend> _friends = new List<Friend>();

        public List<Friend> GetFriends()
        {
            return _friends;
        }

        public void SaveFriends(List<Friend> friends)
        {
            _friends = friends;
        }

        public Friend GetFriendById(string id)
        {
            return _friends.FirstOrDefault(x => x.Id == id);
        }
    }
}

