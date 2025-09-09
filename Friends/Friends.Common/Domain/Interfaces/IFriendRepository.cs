using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;
using Friends.Common.Domain.Models;

namespace Friends.Common.Domain.Interfaces
{
	public interface IFriendRepository
	{
		Task<List<Friend>> GetFriendsAsync(CancellationToken ct);
	}
}

