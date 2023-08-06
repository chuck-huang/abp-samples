using System;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace SignalRDemo.CustomerNotification
{
    public interface IMessageDomainService
    {


        Task<Guid> CreateAsync(MessageVo message);
    }
}