using System;
using Friends.Common.UI.Models;
using System.Collections.Generic;

namespace Friends.Common.UI.Interfaces
{
	public interface IFriendUIStateService
	{
        List<FriendUI> AllFriends { get; set; }
    }
}

