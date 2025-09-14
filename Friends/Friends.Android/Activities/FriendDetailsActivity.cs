using System.ComponentModel;
using Android.App;
using Android.Content;
using Android.OS;
using Android.Widget;
using AndroidX.AppCompat.App;
using Bumptech.Glide;
using Friends.Common.Application.ViewModels;
using Microsoft.Extensions.DependencyInjection;

namespace Friends.Android.Activities
{
	[Activity (Label = "@string/friend_details")]			
	public class FriendDetailsActivity : AppCompatActivity
    {
        private FriendDetailsViewModel friendDetailsViewModel;
        private ImageView photoImageView;
        private TextView fullNameTextView;
        private TextView nickNameTextView;
        private TextView ageTextView;
        private TextView description;
        private ImageView backButton;

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
        }

        private void FriendDetailsViewModel_PropertyChanged(object sender, PropertyChangedEventArgs e)
        {
            UpdateView();
        }

        private void UpdateView()
        {
            var friend = friendDetailsViewModel.Friend;
            Glide.With(this)
                 .Load(friend.ProfilePictureUrl)
                 .CircleCrop()
                 .Into(photoImageView);
            fullNameTextView.Text = friend.FullName;
            nickNameTextView.Text = friend.NickName;
            ageTextView.Text = friend.Age;
            description.Text = GetString(Resource.String.description, friend.FirstName);
        }
    }
}

