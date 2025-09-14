using System;
namespace Friends.Common.Data.Models
{
	public class ApiFriend
	{
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string NickName { get; set; }
        public DateTime DateOfBirth { get; set; }
        public string ProfilePictureUrl { get; set; }
        public bool IsFriend { get; set; }
        public int MajorsWon { get; set; }

    }
}

