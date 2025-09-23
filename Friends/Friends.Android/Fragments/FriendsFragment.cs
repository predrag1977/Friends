using System.ComponentModel;
using Android.OS;
using Android.Views;
using Android.Widget;
using AndroidX.Fragment.App;
using AndroidX.RecyclerView.Widget;
using AndroidX.SwipeRefreshLayout.Widget;
using Friends.Android;
using Friends.Android.Adapters;
using Friends.Common.UI.ViewModels;
using Microsoft.Extensions.DependencyInjection;

public class FriendsFragment : Fragment
{
    private SwipeRefreshLayout swipeRefreshLayout;
    private RecyclerView friendsRecyclerView;
    private EditText searchEditText;
    private FriendsViewModel friendsViewModel;
    private FriendGroupAdapter friendGroupAdapter;

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

        friendsViewModel = MainApplication.Services.GetRequiredService<FriendsViewModel>();
        friendsViewModel.PropertyChanged += FriendsViewModel_PropertyChanged;

        swipeRefreshLayout = view.FindViewById<SwipeRefreshLayout>(Resource.Id.swipeRefreshLayout);
        swipeRefreshLayout.Refresh += async (s, e) =>
        {
            await friendsViewModel.LoadFriendsAsync();
            swipeRefreshLayout.Refreshing = false;
        };
        friendsRecyclerView = view.FindViewById<RecyclerView>(Resource.Id.friend_groups_recyclerView);
        searchEditText = view.FindViewById<EditText>(Resource.Id.search_text);
        searchEditText.TextChanged += (s, e) =>
        {
            friendsViewModel.SearchText = searchEditText.Text;
        };

        friendsRecyclerView.SetLayoutManager(new LinearLayoutManager(Context));
        friendGroupAdapter = new FriendGroupAdapter(friendsViewModel.FriendGroupList);
        friendsRecyclerView.SetAdapter(friendGroupAdapter);
    }

    private void FriendsViewModel_PropertyChanged(object sender, PropertyChangedEventArgs e)
    {
        friendGroupAdapter.Update(friendsViewModel.FriendGroupList);
    }
}