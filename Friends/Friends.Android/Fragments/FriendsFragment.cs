
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Android.App;
using Android.Content;
using Android.OS;
using Android.Views;
using Friends.Android;
using Friends.Common.Application.ViewModels;
using Microsoft.Extensions.DependencyInjection;
using Fragment = AndroidX.Fragment.App.Fragment;

public class FriendsFragment : Fragment
{
    private FriendsViewModel _friendsViewModel;

    public override void OnCreate(Bundle savedInstanceState)
    {
        base.OnCreate(savedInstanceState);

        _friendsViewModel = MainApplication.Services.GetService<FriendsViewModel>();
        _friendsViewModel.PropertyChanged += FriendsViewModel_PropertyChanged;
    }

    public override View OnCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState)
    {
        return inflater.Inflate(Resource.Layout.friends_fragment, container, false);
    }

    public override void OnViewCreated(View view, Bundle savedInstanceState)
    {
        base.OnViewCreated(view, savedInstanceState);

    }

    private void FriendsViewModel_PropertyChanged(object sender, System.ComponentModel.PropertyChangedEventArgs e)
    {

    }
}


