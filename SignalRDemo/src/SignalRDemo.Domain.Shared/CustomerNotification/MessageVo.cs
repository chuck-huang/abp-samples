using System;
using System.Collections.Generic;
using System.Text;

namespace SignalRDemo.CustomerNotification
{
    public class MessageVo
    {
        /// <summary>
        /// 消息来自
        /// </summary>
        public string FromUserName { get; set; }


        /// <summary>
        /// 发送时间
        /// </summary>
        public DateTime SendTime { get; set; }


        /// <summary>
        /// 消息内容
        /// </summary>
        public string Content { get; set; }
    }
}
