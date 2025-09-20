using System.Collections.Generic;

namespace Friends.Common.UI.Models
{
    public class FriendGroup
    {
        public bool IsFriend { get; set; }
        public List<FriendUI> Items { get; set; }
    }
}

