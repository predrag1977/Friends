using System;
using System.Threading.Tasks;
using Friends.Common.Domain.Models;

namespace Friends.Common.Domain.Interfaces
{
	public interface IFriendDetailsRepository
	{
		Task<Friend> GetFriendByIdAsync(int id);
	}
}

