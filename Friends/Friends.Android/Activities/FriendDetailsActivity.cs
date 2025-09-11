
using System;
using Android.App;
using Android.OS;
using Android.Widget;
using Bumptech.Glide;
using Friends.Common.Application.ViewModels;
using Friends.Common.Domain.Models;
using Microsoft.Extensions.DependencyInjection;
using static AndroidX.RecyclerView.Widget.RecyclerView;

namespace Friends.Android.Activities
{
	[Activity (Label = "FriendDetailsActivity")]			
	public class FriendDetailsActivity : Activity
	{
        private FriendDetailsViewModel friendDetailsViewModel;

        protected override void OnCreate (Bundle savedInstanceState)
        {
            base.OnCreate (savedInstanceState);
            SetContentView(Resource.Layout.activity_friend_details);

            friendDetailsViewModel = MainApplication.Services.GetRequiredService<FriendDetailsViewModel>();
            friendDetailsViewModel.PropertyChanged += FriendDetailsViewModel_PropertyChanged;

            var friendId = Intent.GetStringExtra("friend_id") ?? string.Empty;
            friendDetailsViewModel.LoadAsync(friendId);
            PopulateView();
        }

        private void FriendDetailsViewModel_PropertyChanged(object sender, System.ComponentModel.PropertyChangedEventArgs e)
        {
            PopulateView();
        }

        private void PopulateView()
        {
            var friend = friendDetailsViewModel.Friend;

            var photoImageView = FindViewById<ImageView>(Resource.Id.photo);
            Glide.With(this)
                 .Load(friend.ProfilePictureUrl)
                 .CircleCrop()
                 .Placeholder(Resource.Mipmap.ic_launcher_round)
                 .Into(photoImageView);

            var fullNameTextView = FindViewById<TextView>(Resource.Id.fullName);
            fullNameTextView.Text = friendDetailsViewModel.Friend.FullName;

            var nickNameTextView = FindViewById<TextView>(Resource.Id.nickName);
            nickNameTextView.Text = friendDetailsViewModel.Friend.NickName;

            var ageTextView = FindViewById<TextView>(Resource.Id.age);
            ageTextView.Text = friend.Age;

            var description = FindViewById<TextView>(Resource.Id.description);
            description.Text = GetString(Resource.String.description, friend.FirstName);
        }
    }
}

