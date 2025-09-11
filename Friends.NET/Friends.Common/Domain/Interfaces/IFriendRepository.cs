using Friends.Common.Domain.Models;

namespace Friends.Common.Domain.Interfaces
{
	public interface IFriendRepository
	{
		Task<List<Friend>> GetFriendsAsync(CancellationToken ct);
	}
}

