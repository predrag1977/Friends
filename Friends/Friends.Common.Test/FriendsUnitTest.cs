using Friends.Common.DI;
using Friends.Common.Domain.Interfaces;
using Friends.Common.Domain.Models;
using Microsoft.Extensions.DependencyInjection;

namespace Friends.Common.Test;

public class FriendsUnitTest
{
    readonly IServiceProvider serviceProvider;

    public FriendsUnitTest()
    {
        serviceProvider = Core.Build();
    }

    [Fact]
    public async void TestGetFriendsAsync()
    {
        var friendRepository = serviceProvider.GetRequiredService<IFriendRepository>();

        List<Friend> friends = await friendRepository.GetFriendsAsync();
        Assert.True(friends.Count > 0);
    }
}
