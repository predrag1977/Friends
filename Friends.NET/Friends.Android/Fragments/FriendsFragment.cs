
using System.ComponentModel;
using Android.Views;
using AndroidX.RecyclerView.Widget;
using Friends.Android;
using Friends.Android.Adapters;
using Friends.Common.Application.ViewModels;
using Microsoft.Extensions.DependencyInjection;

public class FriendsFragment : Fragment
{
    private RecyclerView friendsRecyclerView = null!;
    private FriendsViewModel friendsViewModel = null!;

    public override void OnCreate(Bundle savedInstanceState)
    {
        base.OnCreate(savedInstanceState);
    }

    public override View OnCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState)
    {
        return inflater.Inflate(Resource.Layout.friends_fragment, container, false);
    }

    public override void OnViewCreated(View view, Bundle savedInstanceState)
    {
        base.OnViewCreated(view, savedInstanceState);
        friendsRecyclerView = view.FindViewById<RecyclerView>(Resource.Id.friend_groups_recyclerView);

        friendsViewModel = MainApplication.Services.GetService<FriendsViewModel>()!;
        friendsViewModel.PropertyChanged += FriendsViewModel_PropertyChanged;
        PopulateView();
    }

    private void FriendsViewModel_PropertyChanged(object? sender, PropertyChangedEventArgs e)
    {
        PopulateView();
    }

    private void PopulateView()
    {
        friendsRecyclerView.SetLayoutManager(new LinearLayoutManager(Context));
        friendsRecyclerView.SetAdapter(new FriendGroupAdapter(friendsViewModel.FriendGroupList));
    }
}

