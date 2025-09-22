using System.Collections.Generic;
using Friends.Common.Domain.Models;

namespace Friends.Common.Domain.Interfaces
{
	public interface IFriendCacheRepository
	{
		List<Friend> GetFriends();
		void SaveFriends(List<Friend> friends);
		Friend GetFriendById(string id);
    }
}

