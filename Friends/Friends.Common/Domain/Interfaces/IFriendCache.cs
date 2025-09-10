using System.Collections.Generic;
using Friends.Common.Domain.Models;

namespace Friends.Common.Domain.Interfaces
{
	public interface IFriendCache
	{
		void SetFriends(List<Friend> friends);
		Friend GetFriendById(string id);
	}
}

