using System.Collections.Generic;
using Friends.Common.Application.Models;

namespace Friends.Common.Application.Interfaces
{
	public interface IFriendCache
	{
		void SetFriends(List<FriendUI> friends);
		FriendUI GetFriendById(string id);
	}
}

