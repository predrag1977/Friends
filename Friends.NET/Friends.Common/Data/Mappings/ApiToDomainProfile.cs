using AutoMapper;
using Friends.Common.Data.Models;
using Friends.Common.Domain.Models;

namespace Friends.Common.Data.Mappings
{
	public class ApiToDomainProfile : Profile
	{
		public ApiToDomainProfile()
		{
			CreateMap<ApiFriend, Friend>()
				.ForMember(des => des.Age, opt => opt.MapFrom(src => $"{DateTime.Today.Year - src.DateOfBirth.Year}"))
				.ForMember(des => des.Id, opt => opt.MapFrom(src => $"{src.FirstName}_{src.LastName}".ToLower()))
				.ForMember(des => des.FullName, opt => opt.MapFrom(src => $"{src.FirstName} {src.LastName}"));

        }
	}
}

