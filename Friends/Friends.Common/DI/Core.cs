using System;
using System.Net.Http;
using AutoMapper;
using Friends.Common.Application.UsesCases;
using Friends.Common.Application.ViewModels;
using Friends.Common.Data.Cache;
using Friends.Common.Data.Mappings;
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

            services.AddAutoMapper(typeof(ApiToDomainProfile).Assembly);

            services.AddSingleton<IFriendCache, FriendCache>();
            services.AddSingleton<IFriendRepository, FriendRepository>();
            services.AddSingleton<IFriendDetailsRepository, FriendDetailsRepository>();

            services.AddSingleton<GetFriendUseCase>();
            services.AddSingleton<GetFriendCacheUseCase>();

            services.AddTransient<FriendsViewModel>();
            services.AddTransient<FriendDetailsViewModel>();

            return services.BuildServiceProvider();
		}
	}
}

