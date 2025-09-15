using System;
using CommunityToolkit.Mvvm.ComponentModel;

namespace Friends.Common.Application.Models
{
	public partial class FriendUI : ObservableObject
	{
        public string FirstName { get; set; } = "";
        public string LastName { get; set; } = "";
        public string NickName { get; set; } = "";
        public string ProfilePictureUrl { get; set; } = "";
        [ObservableProperty]
        public bool isFriend;
        public int MajorsWon { get; set; }

        public string Id { get; set; } = "";
        public string FullName { get; set; } = "";
        public string Age { get; set; } = "";
    }
}

