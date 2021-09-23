import 'package:clone_wechat/common/touch_callback.dart';
import 'package:clone_wechat/common/wechat_item.dart';
import 'package:flutter/material.dart';

class Personal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            color: Colors.white,
            height: 80.0,
            child: TouchCallBack(
              onPressed: () {},
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 20.0, right: 15.0),
                    child: Image.asset('images/tutu.png'),
                    width: 80.0,
                    height: 80.0,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '圈圈',
                          style: TextStyle(
                              fontSize: 18.0, color: Color(0xFF353535)),
                        ),
                        Text(
                          '微信號 tutu',
                          style: TextStyle(
                              fontSize: 18.0, color: Color(0xFFa9a9a9)),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20.0, right: 15.0),
                    child: Image.asset('images/code.png'),
                    width: 24.0,
                    height: 24.0,
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            color: Colors.white,
            child: WeChatItem(
              title: '錢包',
              imagePath: 'images/icon_me_money.png',
            ),
          ),
          Container(
              margin: const EdgeInsets.only(top: 20.0),
              color: Colors.white,
              child: Column(
                children: [
                  WeChatItem(
                    imagePath: 'images/icon_me_collect.png',
                    title: '收藏',
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                    child: Divider(
                      height: 0.5,
                      color: Color(0xFFd9d9d9),
                    ),
                  ),
                  WeChatItem(
                    imagePath: 'images/icon_me_photo.png',
                    title: '相冊',
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                    child: Divider(
                      height: 0.5,
                      color: Color(0xFFd9d9d9),
                    ),
                  ),
                  WeChatItem(
                    imagePath: 'images/icon_me_card.png',
                    title: '卡包',
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                    child: Divider(
                      height: 0.5,
                      color: Color(0xFFd9d9d9),
                    ),
                  ),
                  WeChatItem(
                    imagePath: 'images/icon_me_smile.png',
                    title: '表情',
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 20.0),
                    color: Colors.white,
                    child: WeChatItem(
                      title: '設置',
                      imagePath: 'images/icon_me_setting.png',
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
