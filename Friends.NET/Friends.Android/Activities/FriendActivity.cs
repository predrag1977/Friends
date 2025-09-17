namespace Friends.Android;

[Activity(Label = "@string/app_name", Theme = "@style/AppTheme", MainLauncher = true)]
public class FriendActivity : Activity
{
    protected override void OnCreate(Bundle savedInstanceState)
    {
        base.OnCreate(savedInstanceState);

        // Set our view from the "main" layout resource
        SetContentView(Resource.Layout.activity_friend);

        if (savedInstanceState == null)
        {
            FragmentManager
                .BeginTransaction()
                .Replace(Resource.Id.container, new FriendsFragment())
                .Commit();
        }
    }
}
