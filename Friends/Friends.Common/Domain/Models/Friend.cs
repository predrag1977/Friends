using System;

namespace Friends.Common.Domain.Models
{
    public class Friend
    {
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string NickName { get; set; }
        public DateTime DateOfBirth { get; set; }
        public string ProfilePictureUrl { get; set; }
        public bool IsFriend { get; set; }
        public int MajorsWon { get; set; }

        public string Id => $"{FirstName}_{LastName}".ToLower();
        public string FullName => $"{FirstName} {LastName}";
        public string Age => $"{DateTime.UtcNow.Year - DateOfBirth.Year} yrs";
    }
}

