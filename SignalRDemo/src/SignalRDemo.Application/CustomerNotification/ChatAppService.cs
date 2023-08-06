using System;
using System.Threading.Tasks;

namespace SignalRDemo.CustomerNotification
{
    public class ChatAppService : SignalRDemoAppService, IChatAppService
    {

        private readonly IMessageDomainService _messageDomainService;



        public ChatAppService(IMessageDomainService messageDomainService)
        {
            _messageDomainService = messageDomainService;
        }

        public async Task<Guid> CreateAsync(MessageVo message)
        {

            return await _messageDomainService.CreateAsync(message);
        }
    }
}