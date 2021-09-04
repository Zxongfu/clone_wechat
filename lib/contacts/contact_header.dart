import '../contacts/contact_item.dart';
import 'package:flutter/material.dart';

class ContactHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        ContactItem(titleName: '新朋友', imageName: 'images/icon_addfriend.png'),
        ContactItem(titleName: '新朋友', imageName: 'images/icon_groupchat.png'),
        ContactItem(titleName: '新朋友', imageName: 'images/icon_public.png'),
      ],
    );
  }
}
