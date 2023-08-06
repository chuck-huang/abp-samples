using System;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.SignalR;
using SignalRDemo.CustomerNotification;
using Volo.Abp.AspNetCore.SignalR;
using Volo.Abp.Identity;

namespace SignalRDemo.Web
{
    [Authorize]
    public class ChatHub : AbpHub
    {
        private readonly IIdentityUserRepository _identityUserRepository;
        private readonly ILookupNormalizer _lookupNormalizer;
        private readonly IChatAppService chatAppService;

        public ChatHub(IIdentityUserRepository identityUserRepository, ILookupNormalizer lookupNormalizer, IChatAppService chatAppService)
        {
            _identityUserRepository = identityUserRepository;
            _lookupNormalizer = lookupNormalizer;
            this.chatAppService = chatAppService;
        }

        public async Task SendMessage(string targetUserName, string message)
        {
            var targetUser = await _identityUserRepository.FindByNormalizedUserNameAsync(_lookupNormalizer.NormalizeName(targetUserName));

            message = $"{CurrentUser.UserName}: {message}";

            await chatAppService.CreateAsync(new MessageVo
            {
                Content = message,
                FromUserName = CurrentUser.Name,
                SendTime = DateTime.Now,
            });
            await Clients
                .User(targetUser.Id.ToString())
                .SendAsync("ReceiveMessage", message);
        }
    }
}
