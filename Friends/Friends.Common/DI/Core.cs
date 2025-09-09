using System;
using Friends.Common.Application.UsesCases;
using Friends.Common.Application.ViewModels;
using Friends.Common.Data.Repositories;
using Friends.Common.Domain.Interfaces;
using Microsoft.Extensions.DependencyInjection;

namespace Friends.Common.DI
{
	public static class Core
	{
        private static readonly string baseUri = "https://tminterview.blob.core.windows.net/";

        public static IServiceProvider Build()
		{
			var service = new ServiceCollection();

			service.AddHttpClient("", c => {
				c.BaseAddress = new Uri(baseUri);
				c.Timeout = TimeSpan.FromSeconds(15);
            });

			service.AddSingleton<IFriendRepository, FriendRepository>();

			service.AddSingleton<GetFriendUseCase>();
			service.AddTransient<FriendsViewModel>();

			return service.BuildServiceProvider();
		}
	}
}

