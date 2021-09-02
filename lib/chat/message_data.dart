class MessageData {
  String avatar;
  String title;
  String subTitle;
  DateTime time;
  MessageType type;

  MessageData(this.avatar, this.title, this.subTitle, this.time, this.type);
}

enum MessageType { SYSTEM, PUBLIC, CHAT, GROUP }

List<MessageData> messageData = [
  new MessageData('https://miro.medium.com/max/676/1*XEgA1TTwXa5AvAdw40GFow.png',
      '大耳朵图图',
      '突然想到的',
      new DateTime.now(),
      MessageType.CHAT
  ),
  new MessageData(
      'https://miro.medium.com/max/676/1*XEgA1TTwXa5AvAdw40GFow.png',
      '多拉a梦',
      '机器猫！！！',
      new DateTime.now(),
      MessageType.CHAT
  ),
  new MessageData(
      'https://miro.medium.com/max/676/1*XEgA1TTwXa5AvAdw40GFow.png',
      '一休哥',
      '我在思考问题。。',
      new DateTime.now(),
      MessageType.CHAT
  ),
  new MessageData(
      'https://miro.medium.com/max/676/1*XEgA1TTwXa5AvAdw40GFow.png',
      '忍者神龟',
      '忍者神龟。。。。',
      new DateTime.now(),
      MessageType.CHAT
  ),
  new MessageData(
      'https://miro.medium.com/max/676/1*XEgA1TTwXa5AvAdw40GFow.png',
      '光头强',
      '我是光头强。。',
      new DateTime.now(),
      MessageType.CHAT
  ),
  new MessageData(
      'https://miro.medium.com/max/676/1*XEgA1TTwXa5AvAdw40GFow.png',
      '熊二',
      '俺是熊二。。',
      new DateTime.now(),
      MessageType.CHAT
  ),
  new MessageData(
      'https://miro.medium.com/max/676/1*XEgA1TTwXa5AvAdw40GFow.png',
      '超级飞侠',
      '超级飞侠。。',
      new DateTime.now(),
      MessageType.CHAT
  ),
  new MessageData(
      'https://miro.medium.com/max/676/1*XEgA1TTwXa5AvAdw40GFow.png',
      '大耳朵图图',
      '突然想到的',
      new DateTime.now(),
      MessageType.CHAT
  ),
  new MessageData(
      'https://miro.medium.com/max/676/1*XEgA1TTwXa5AvAdw40GFow.png',
      '多拉a梦',
      '机器猫！！！',
      new DateTime.now(),
      MessageType.CHAT
  ),
  new MessageData(
      'https://miro.medium.com/max/676/1*XEgA1TTwXa5AvAdw40GFow.png',
      '一休哥',
      '我在思考问题。。',
      new DateTime.now(),
      MessageType.CHAT
  ),
];
