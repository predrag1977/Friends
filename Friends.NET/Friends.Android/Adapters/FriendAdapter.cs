using Android.Content;
using Android.Views;
using Android.Widget;
using AndroidX.RecyclerView.Widget;
using Bumptech.Glide;
using Friends.Android.Activities;
using Friends.Common.Domain.Models;
using System.Collections.Generic;
using System.Linq;

namespace Friends.Android.Adapters
{
    public class FriendAdapter : RecyclerView.Adapter
    {
        private readonly List<Friend> friendList;

        public FriendAdapter(List<Friend> friendList)
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
            var viewHolder = new FriendViewHolder(holder.ItemView);
            var context = viewHolder.ItemView.Context;
            var friend = friendList[position];

            Glide.With(context)
                 .Load(friend.ProfilePictureUrl)
                 .CircleCrop()
                 .Into(viewHolder.PhotoImageView);

            viewHolder.FriendNameTextView.Text = friend.FullName;
            viewHolder.NickNameTextView.Text = friend.NickName;
            viewHolder.ItemView.Click += (s, e) => {
                var intent = new Intent(viewHolder.ItemView.Context, typeof(FriendDetailsActivity));
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

        public FriendViewHolder(View itemView) : base(itemView)
        {
            PhotoImageView = itemView.FindViewById<ImageView>(Resource.Id.photo);
            FriendNameTextView = itemView.FindViewById<TextView>(Resource.Id.fullName);
            NickNameTextView = itemView.FindViewById<TextView>(Resource.Id.nickName);
        }
    }
}