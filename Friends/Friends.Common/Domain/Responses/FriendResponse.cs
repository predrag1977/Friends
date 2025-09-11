using System.Collections.Generic;
using Friends.Common.Data.Models;

namespace Friends.Common.Domain.Responses
{
	public class FriendResponse
	{
		public List<ApiFriend> Friends { get; set; }
	}
}

