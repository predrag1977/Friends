using System;

namespace Friends.Common.Domain.Models
{
    public partial class Friend
    {
        public string FirstName { get; set; } = "";
        public string LastName { get; set; } = "";
        public string NickName { get; set; } = "";
        public string ProfilePictureUrl { get; set; } = "";
        public bool IsFriend { get; set; }
        public int MajorsWon { get; set; }

        public string Id { get; set; } = "";
        public string FullName { get; set; } = "";
        public string Age { get; set; } = "";
    }
}

