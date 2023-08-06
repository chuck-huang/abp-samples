using SignalRDemo.CustomerNotification;
using System;
using System.ComponentModel.DataAnnotations.Schema;
using Volo.Abp.Domain.Entities;
using Volo.Abp.Domain.Entities.Auditing;

namespace SignalRDemo.CustomerNotification.Entity
{
    [Table("notification_message")]
    public class ChatMessage : Entity<Guid>
    {
        /// <summary>
        /// 消息发送状态
        /// </summary>
        public MessageStatus Status { get; set; }

        /// <summary>
        /// 消息类型
        /// </summary>
        public MessageType Type { get; set; }

        /// <summary>
        /// 发送时间
        /// </summary>
        public DateTime SendTime { get; set; }
        /// <summary>
        /// 消息内容
        /// </summary>
        public string Content { get; set; }

        ///// <summary>
        ///// 接收消息的联系人ID
        ///// </summary>
        //public Guid ToContactUserId { get; set; }

        public string TestName { get; set; }

        ///// <summary>
        ///// 接收人信息
        ///// </summary>
        //[ForeignKey(nameof(ToContactUserId))] public UserEntity ToContactUser { get; set; }

        ///// <summary>
        ///// 发送消息的联系人ID
        ///// </summary>
        //public Guid FromUserId { get; set; }

        ///// <summary>
        ///// 发送人信息
        ///// </summary>
        //[ForeignKey(nameof(FromUserId))] public UserEntity FromUser { get; set; }
    }
}
