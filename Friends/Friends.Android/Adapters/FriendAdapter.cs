using Android.Net;
using Android.Views;
using Android.Widget;
using AndroidX.RecyclerView.Widget;
using Bumptech.Glide;
using Friends.Common.Domain.Models;
using System.Collections.Generic;

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
            var friend = friendList[position];
            var viewHolder = new FriendViewHolder(holder.ItemView);

            viewHolder.FriendNameTextView.Text = friend.FullName;
            viewHolder.NickNameTextView.Text = friend.NickName;


            //Glide.With(viewHolder.ItemView.Context)
            //     .Load(friend.ProfilePictureUrl)
            //     .Placeholder(Resource.Mipmap.ic_launcher_round)
            //     .Into(viewHolder.PhotoImageView);
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