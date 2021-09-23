import 'package:clone_wechat/common/wechat_item.dart';
import 'package:flutter/material.dart';

class Found extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _State();
  }
}

class _State extends State<Found> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Container(
      child: ListView(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            color: Colors.white,
            child: WeChatItem(
              imagePath: 'images/icon_friends.png',
              title: '朋友圈',
            ),
          ),
          Container(
              margin: const EdgeInsets.only(top: 20.0),
              color: Colors.white,
              child: Column(
                children: [
                  WeChatItem(
                    imagePath: 'images/icon_scan.png',
                    title: '掃一掃',
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                    child: Divider(
                      height: 0.5,
                      color: Color(0xFFd9d9d9),
                    ),
                  ),
                  WeChatItem(
                    imagePath: 'images/icon_shake.png',
                    title: '搖一搖',
                  ),
                ],
              )),
          Container(
              margin: const EdgeInsets.only(top: 20.0),
              color: Colors.white,
              child: Column(
                children: [
                  WeChatItem(
                    imagePath: 'images/icon_look.png',
                    title: '看一看',
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                    child: Divider(
                      height: 0.5,
                      color: Color(0xFFd9d9d9),
                    ),
                  ),
                  WeChatItem(
                    imagePath: 'images/icon_search.png',
                    title: '搜一搜',
                  ),
                ],
              )),
          Container(
              margin: const EdgeInsets.only(top: 20.0),
              color: Colors.white,
              child: Column(
                children: [
                  WeChatItem(
                    imagePath: 'images/icon_near.png',
                    title: '附近的人',
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                    child: Divider(
                      height: 0.5,
                      color: Color(0xFFd9d9d9),
                    ),
                  ),
                  WeChatItem(
                    imagePath: 'images/icon_bottle.png',
                    title: '漂流瓶',
                  ),
                ],
              )),
          Container(
              margin: const EdgeInsets.only(top: 20.0),
              color: Colors.white,
              child: Column(
                children: [
                  WeChatItem(
                    imagePath: 'images/icon_shop.png',
                    title: '購物',
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                    child: Divider(
                      height: 0.5,
                      color: Color(0xFFd9d9d9),
                    ),
                  ),
                  WeChatItem(
                    imagePath: 'images/icon_game.png',
                    title: '遊戲',
                  ),
                ],
              )),
          Container(
            margin: const EdgeInsets.only(top: 20.0, bottom: 20.0),
            color: Colors.white,
            child: WeChatItem(
              imagePath: 'images/icon_link.png',
              title: '程序',
            ),
          ),
        ],
      ),
    ));
  }
}
