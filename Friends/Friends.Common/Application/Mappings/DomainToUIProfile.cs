using System;
using AutoMapper;
using Friends.Common.Application.Models;
using Friends.Common.Domain.Models;

namespace Friends.Common.Application.Mappings
{
	public class DomainToUIProfile : Profile
	{
		public DomainToUIProfile()
		{
			CreateMap<Friend, FriendUI>()
                .ForMember(des => des.Age, opt => opt.MapFrom(src => $"{DateTime.Today.Year - src.DateOfBirth.Year}"))
                .ForMember(des => des.FullName, opt => opt.MapFrom(src => $"{src.FirstName} {src.LastName}"));
		}
	}
}

