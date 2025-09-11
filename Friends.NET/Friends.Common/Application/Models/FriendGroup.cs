using Friends.Common.Domain.Models;

namespace Friends.Common.Application.Models
{
    public class FriendGroup
    {
        public bool IsFriend { get; set; }
        public List<Friend>? Items { get; set; }
    }
}

