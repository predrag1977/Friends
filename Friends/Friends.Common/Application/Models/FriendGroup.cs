using Friends.Common.Domain.Models;
using System.Collections.Generic;

namespace Friends.Common.Application.Models
{
    public class FriendGroup
    {
        public bool IsFriend { get; set; }
        public List<Friend> Items { get; set; }
    }
}

