import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './chat/message_page.dart';

enum ItemType { GroupChat, AddFriends, Qrcode, Payments, Help }

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MainState();
  }
}

class MainState extends State<App> {
  var _currentIndex = 0;

  MessagePage? message;
  // Contacts contacts;
  // Found found;
  // Personal personal;
  currentPage() {
    switch (_currentIndex) {
      case 0:
        if (message == null) {
          message = new MessagePage();
          return message;
        }
      // case 1:
      //   if (contacts == null) {
      //     contacts = new Contacts();
      //     return contacts;
      //   }
      // case 2:
      //   if (found == null) {
      //     found = new Found();
      //     return found;
      //   }
      // case 3:
      //   if (personal == null) {
      //     personal = new Personal();
      //     return personal;
      //   }
    }
  }

  // 這是封裝menu item方法
  _popMenuItem(String title, {String? imagePath, IconData? icon}) {
    return PopupMenuItem(
        child: Row(
      children: [
        imagePath != null
            ? Image.asset(
                imagePath,
                width: 32.0,
                height: 32.0,
              )
            : SizedBox(
                width: 32.0,
                height: 32.0,
                child: Icon(
                  icon,
                  color: Colors.white,
                ),
              ),
        Container(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
        )
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('微信'),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'search');
            },
            child: Icon(Icons.search),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: GestureDetector(
              onTap: () {
                showMenu(
                  context: context,
                  position: RelativeRect.fromLTRB(500.0, 75.0, 10.0, 0.0),
                  items: <PopupMenuEntry>[
                    _popMenuItem('群發', imagePath: 'images/icon_menu_group.png'),
                    _popMenuItem('加好友', imagePath: 'images/icon_menu_addfriend.png'),
                    _popMenuItem('掃一掃', imagePath: 'images/icon_menu_scan.png'),
                    _popMenuItem('收付款', icon: Icons.crop_free),
                    _popMenuItem('幫助與反饋', icon: Icons.email),
                  ],
                );
              },
              child: Icon(Icons.add),
            ),
          )
        ],
      ),
      bottomNavigationBar: new BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          new BottomNavigationBarItem(
            icon: _currentIndex == 0
                ? Image.asset(
                    'images/weixin_pressed.png',
                    width: 32.0,
                    height: 28.0,
                  )
                : Image.asset(
                    'images/weixin_normal.png',
                    width: 32.0,
                    height: 28.0,
                  ),
            label: '微信',
          ),
          new BottomNavigationBarItem(
            icon: _currentIndex == 1
                ? Image.asset(
                    'images/contact_list_pressed.png',
                    width: 32.0,
                    height: 28.0,
                  )
                : Image.asset(
                    'images/contact_list_normal.png',
                    width: 32.0,
                    height: 28.0,
                  ),
            label: '通訊錄',
          ),
          new BottomNavigationBarItem(
            icon: _currentIndex == 2
                ? Image.asset(
                    'images/find_pressed.png',
                    width: 32.0,
                    height: 28.0,
                  )
                : Image.asset(
                    'images/find_normal.png',
                    width: 32.0,
                    height: 28.0,
                  ),
            label: '發現',
          ),
          new BottomNavigationBarItem(
            icon: _currentIndex == 3
                ? Image.asset(
                    'images/profile_pressed.png',
                    width: 32.0,
                    height: 28.0,
                  )
                : Image.asset(
                    'images/profile_normal.png',
                    width: 32.0,
                    height: 28.0,
                  ),
            label: '我',
          )
        ],
        selectedItemColor: Color(0xFF46c01b),
        unselectedItemColor: Color(0xff999999),
        selectedLabelStyle: TextStyle(color: Color(0xFF46c01b)),
        unselectedLabelStyle: TextStyle(
          color: Color(0xff999999),
        ),
      ),
      body: currentPage(),
    );
  }
}
