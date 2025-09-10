using System;
using System.Net.Http;
using Friends.Common.Application.UsesCases;
using Friends.Common.Application.ViewModels;
using Friends.Common.Data.Cache;
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
			var services = new ServiceCollection();

            services.AddSingleton(new HttpClient
            {
                BaseAddress = new Uri(baseUri),
                Timeout = TimeSpan.FromSeconds(15)
            });

            services.AddSingleton<IFriendCache, FriendCache>();
            services.AddSingleton<IFriendRepository, FriendRepository>();

			services.AddSingleton<GetFriendUseCase>();
			services.AddTransient<FriendsViewModel>();

			return services.BuildServiceProvider();
		}
	}
}

