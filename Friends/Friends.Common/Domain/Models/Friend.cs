namespace Friends.Common.Domain.Models
{
    public class Friend
    {
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string NickName { get; set; }
        public string DateTime { get; set; }
        public string ProfilePictureUrl { get; set; }
        public bool IsFriend { get; set; }
        public int MajorsWon { get; set; }
    }
}

