using Friends.Common.Domain.Interfaces;
using Friends.Common.Domain.Models;

namespace Friends.Common.Data.Cache
{
	public class FriendCache : IFriendCache
	{
        public List<Friend> Friends { get; private set; } = new();

        public Friend GetFriendById(string id)
        {
            return Friends.First(x => x.Id == id);
        }

        public void SetFriends(List<Friend> friends)
        {
            Friends = friends;
        }
    }
}

