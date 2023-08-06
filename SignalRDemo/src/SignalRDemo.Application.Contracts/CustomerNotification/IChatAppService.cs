using System;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace SignalRDemo.CustomerNotification
{
    public interface IChatAppService
    {

        Task<Guid> CreateAsync(MessageVo message);
    }
}
