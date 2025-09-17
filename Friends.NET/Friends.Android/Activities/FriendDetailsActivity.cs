using System.ComponentModel;
using Android.Content;
using Bumptech.Glide;
using Friends.Common.Application.Models;
using Friends.Common.Application.ViewModels;
using Microsoft.Extensions.DependencyInjection;

namespace Friends.Android.Activities
{
	[Activity (Label = "@string/friend_details", Theme = "@style/FriendDetailsActivityTheme")]			
	public class FriendDetailsActivity : Activity
    {
        private FriendDetailsViewModel friendDetailsViewModel;
        private ImageView photoImageView;
        private TextView fullNameTextView;
        private TextView nickNameTextView;
        private TextView ageTextView;
        private TextView description;
        private ImageView backButton;
        private ImageView friendImageView;

        protected override void OnCreate (Bundle savedInstanceState)
        {
            base.OnCreate (savedInstanceState);
            SetContentView(Resource.Layout.activity_friend_details);

            BindView();

            friendDetailsViewModel = MainApplication.Services.GetRequiredService<FriendDetailsViewModel>();
            friendDetailsViewModel.PropertyChanged += FriendDetailsViewModel_PropertyChanged;

            var friendId = Intent.GetStringExtra("friend_id") ?? string.Empty;
            friendDetailsViewModel.LoadAsync(friendId);
        }

        private void BindView()
        {
            photoImageView = FindViewById<ImageView>(Resource.Id.photo);
            fullNameTextView = FindViewById<TextView>(Resource.Id.fullName);
            nickNameTextView = FindViewById<TextView>(Resource.Id.nickName);
            ageTextView = FindViewById<TextView>(Resource.Id.age);
            description = FindViewById<TextView>(Resource.Id.description);
            backButton = FindViewById<ImageView>(Resource.Id.backBtn);
            backButton.Click += (s, e) =>
            {
                Finish();
            };
            friendImageView = FindViewById<ImageView>(Resource.Id.friend_image_view);
            friendImageView.Click += (s, e) =>
            {
                friendDetailsViewModel.ChangeIsFriend();
            };
        }

        private void FriendDetailsViewModel_PropertyChanged(object sender, PropertyChangedEventArgs e)
        {
            var friend = (sender as FriendDetailsViewModel).Friend;
            UpdateView(friend);
        }

        private void UpdateView(FriendUI friend)
        {
            Glide.With(this)
                 .Load(friend.ProfilePictureUrl)
                 .CircleCrop()
                 .Into(photoImageView);
            fullNameTextView.Text = friend.FullName;
            nickNameTextView.Text = friend.NickName;
            ageTextView.Text = GetString(Resource.String.age, friend.Age);
            description.Text = GetString(Resource.String.description, friend.FirstName);
            friendImageView.Alpha = friend.IsFriend ? 1f : 0.5f;
        }
    }
}

