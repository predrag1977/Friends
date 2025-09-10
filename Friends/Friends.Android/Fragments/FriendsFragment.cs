
using System.ComponentModel;
using Android.OS;
using Android.Views;
using AndroidX.RecyclerView.Widget;
using Friends.Android;
using Friends.Android.Adapters;
using Friends.Common.Application.ViewModels;
using Microsoft.Extensions.DependencyInjection;
using Fragment = AndroidX.Fragment.App.Fragment;

public class FriendsFragment : Fragment
{
    private RecyclerView friendsRecyclerView;
    private FriendsViewModel friendsViewModel;

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
        friendsRecyclerView = view.FindViewById<RecyclerView>(Resource.Id.friends_recyclerView);

        friendsViewModel = MainApplication.Services.GetService<FriendsViewModel>();
        friendsViewModel.PropertyChanged += FriendsViewModel_PropertyChanged;
        PopulateView();
    }

    private void FriendsViewModel_PropertyChanged(object sender, PropertyChangedEventArgs e)
    {
        PopulateView();
    }

    private void PopulateView()
    {
        friendsRecyclerView.SetLayoutManager(new LinearLayoutManager(Context));
        friendsRecyclerView.SetAdapter(new FriendAdapter(friendsViewModel.FriendList));
    }
}

