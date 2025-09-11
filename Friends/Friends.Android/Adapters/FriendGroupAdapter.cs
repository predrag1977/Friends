using System.Collections.Generic;
using Android.Views;
using Android.Widget;
using AndroidX.RecyclerView.Widget;
using Friends.Common.Application.Models;

namespace Friends.Android.Adapters
{
	public class FriendGroupAdapter : RecyclerView.Adapter
	{
        private readonly List<FriendGroup> friendGroupList;

        public FriendGroupAdapter(List<FriendGroup> friendGroupList)
		{
            this.friendGroupList = friendGroupList;
        }

        public override int ItemCount => friendGroupList?.Count ?? 0;

        public override void OnBindViewHolder(RecyclerView.ViewHolder holder, int position)
        {
            var viewHolder = new FriendGroupViewHolder(holder.ItemView);
            var context = viewHolder.ItemView.Context;
            var friendGroup = friendGroupList[position];

            var headerStringResource = friendGroup.IsFriend ? Resource.String.recently_played : Resource.String.friends;
            viewHolder.HeaderTextView.Text = context.GetString(headerStringResource);

            viewHolder.FriendRecyclerView.SetLayoutManager(new LinearLayoutManager(context));
            viewHolder.FriendRecyclerView.SetAdapter(new FriendAdapter(friendGroup.Items));
        }

        public override RecyclerView.ViewHolder OnCreateViewHolder(ViewGroup parent, int viewType)
        {
            var itemView = LayoutInflater.From(parent.Context).Inflate(Resource.Layout.friend_group_item, parent, false);
            return new FriendGroupViewHolder(itemView);
        }
    }

    internal class FriendGroupViewHolder : RecyclerView.ViewHolder
    {
        public TextView HeaderTextView { get; set; }
        public RecyclerView FriendRecyclerView { get; set; }

        public FriendGroupViewHolder(View itemView) : base(itemView)
        {
            HeaderTextView = itemView.FindViewById<TextView>(Resource.Id.header_text);
            FriendRecyclerView = itemView.FindViewById<RecyclerView>(Resource.Id.friends_recyclerView);
        }
    }
}

