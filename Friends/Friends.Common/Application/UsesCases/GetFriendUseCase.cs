using System;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;
using Friends.Common.Domain.Interfaces;
using Friends.Common.Domain.Models;

namespace Friends.Common.Application.UsesCases
{
	public class GetFriendUseCase
	{
        private readonly IFriendRepository _friendRepository;

        public GetFriendUseCase(IFriendRepository friendRepository)
		{
			_friendRepository = friendRepository;
        }

		public async Task<List<Friend>> ExecuteAsync(CancellationToken ct = default)
		{
			return await _friendRepository.GetFriendsAsync(ct);
        }
	}
}

