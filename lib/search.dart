import 'package:flutter/material.dart';

import 'common/touch_callback.dart';

class Search extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SearchState();
  }
}

class SearchState extends State<Search> {
  FocusNode focusNode = new FocusNode();

  _requestFocus() {
    FocusScope.of(context).requestFocus(focusNode);
    return focusNode;
  }

  _getText(String text) {
    return TouchCallBack(
        child: Text(
          text,
          style: TextStyle(fontSize: 14.0, color: Color(0xff1aad19)),
        ),
        onPressed: () {});
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                TouchCallBack(
                    child: Container(
                      height: 45.0,
                      margin: const EdgeInsets.only(left: 12.0, right: 12.0),
                      child: Icon(
                        Icons.chevron_left,
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
                Container(
                  alignment: Alignment.centerLeft,
                  height: 45.0,
                  margin: const EdgeInsets.only(left: 50.0, right: 10.0),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(width: 1.0, color: Colors.green))),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                          child: TextField(
                        focusNode: _requestFocus(),
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                        ),
                        onChanged: (String text) {},
                        decoration: InputDecoration(
                            hintText: '搜尋', border: InputBorder.none),
                      )),
                      Container(
                        margin: EdgeInsets.only(right: 10.0),
                        child: Icon(
                          Icons.mic,
                          color: Color(0xffaaaaaa),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 50.0),
              child: Text(
                '搜尋指定文章',
                style: TextStyle(fontSize: 16.0, color: Color(0xffb5b5b5)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _getText('朋友圈'),
                  _getText('公眾號'),
                  _getText('文章'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _getText('程序'),
                  _getText('音樂'),
                  _getText('表情'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
