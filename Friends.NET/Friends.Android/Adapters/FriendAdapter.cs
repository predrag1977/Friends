using Android.Content;
using Android.Views;
using AndroidX.RecyclerView.Widget;
using Bumptech.Glide;
using Friends.Android.Activities;
using Friends.Common.Application.Models;

namespace Friends.Android.Adapters
{
    public class FriendAdapter : RecyclerView.Adapter
    {
        private readonly List<FriendUI> friendList;

        public FriendAdapter(List<FriendUI> friendList)
        {
            this.friendList = friendList;
        }

        public override int ItemCount => friendList?.Count ?? 0;

        public override RecyclerView.ViewHolder OnCreateViewHolder(ViewGroup parent, int viewType)
        {
            var itemView = LayoutInflater.From(parent.Context).Inflate(Resource.Layout.friend_item, parent, false);
            return new FriendViewHolder(itemView);
        }

        public override void OnBindViewHolder(RecyclerView.ViewHolder holder, int position)
        {
            var viewHolder = holder as FriendViewHolder;
            var context = viewHolder.ItemView.Context;
            var friend = friendList[position];

            Glide.With(context)
                 .Load(friend.ProfilePictureUrl)
                 .CircleCrop()
                 .Into(viewHolder.PhotoImageView);
            viewHolder.FriendImageView.Alpha = friend.IsFriend ? 1f : 0.2f;
            viewHolder.FriendImageView.Click += (s, e) =>
            {
                friend.IsFriend = !friend.IsFriend;
            };
            viewHolder.FriendNameTextView.Text = friend.FullName;
            viewHolder.NickNameTextView.Text = friend.NickName;
            viewHolder.ItemView.Click += (s, e) => {
                var intent = new Intent(context, typeof(FriendDetailsActivity));
                intent.PutExtra("friend_id", friend.Id);
                context.StartActivity(intent);
            };
        }
    }

    internal class FriendViewHolder : RecyclerView.ViewHolder
    {
        public ImageView PhotoImageView { get; set; }
        public TextView FriendNameTextView { get; set; }
        public TextView NickNameTextView { get; set; }
        public ImageView FriendImageView { get; set; }

        public FriendViewHolder(View itemView) : base(itemView)
        {
            PhotoImageView = itemView.FindViewById<ImageView>(Resource.Id.photo);
            FriendNameTextView = itemView.FindViewById<TextView>(Resource.Id.fullName);
            NickNameTextView = itemView.FindViewById<TextView>(Resource.Id.nickName);
            FriendImageView = itemView.FindViewById<ImageView>(Resource.Id.friend_image_view);
        }
    }
}