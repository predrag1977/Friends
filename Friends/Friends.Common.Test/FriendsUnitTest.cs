using Friends.Common.Data.Repositories;
using Friends.Common.DI;
using Friends.Common.Domain.Models;
using Microsoft.Extensions.DependencyInjection;

namespace Friends.Common.Test;

public class FriendsUnitTest
{
    readonly IServiceProvider serviceProvider = Core.Build();

    [Fact]
    public async void TestGetFriendsAsync()
    {
        var httpClient = serviceProvider.GetService<HttpClient>();
        var friendRepository = new FriendRepository(httpClient);

        List<Friend> friends = await friendRepository.GetFriendsAsync();
        Assert.True(friends.Count > 0);
    }
}
