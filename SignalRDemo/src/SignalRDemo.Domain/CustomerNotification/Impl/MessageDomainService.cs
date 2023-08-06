using SignalRDemo.CustomerNotification.Entity;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using Volo.Abp.Domain.Repositories;
using Volo.Abp.Domain.Services;

namespace SignalRDemo.CustomerNotification.Impl
{
    public class MessageDomainService : DomainService, IMessageDomainService
    {
        private readonly IRepository<ChatMessage> _repository;

        public MessageDomainService(IRepository<ChatMessage> repository)
        {
            _repository = repository;
        }

        public async Task<Guid> CreateAsync(MessageVo message)
        {
            ChatMessage msg = new ChatMessage()
            {
                TestName = message.FromUserName,
                SendTime = message.SendTime,
                Content = message.Content,
                Type = MessageType.customerService,
                Status = MessageStatus.Success
            };

            msg = await _repository.InsertAsync(msg, true);

            return msg.Id;
        }

    }
}