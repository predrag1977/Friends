using System.Collections.Generic;
using Friends.Common.UI.Interfaces;
using Friends.Common.UI.Models;

namespace Friends.Common.UI.Services
{
	public class FriendUIStateService : IFriendUIStateService
    {
        public List<FriendUI> AllFriends { get; set; }
    }
}

