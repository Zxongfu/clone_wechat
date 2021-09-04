import 'package:flutter/material.dart';

import './contact_header.dart';
import './contact_item.dart';
import './contact_slider_list.dart';
import './contact_vo.dart';

class Contacts extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ContactState();
  }
}

class ContactState extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ContactSliderList(
        headerBuilder: (BuildContext context, int index) {
          return Container(
            child: ContactHeader(),
          );
        },
        sectionBuilder: (BuildContext context, int index) {
          return Container(
              height: 32.0,
              padding: const EdgeInsets.only(left: 14.0),
              color: Colors.grey[300],
              alignment: Alignment.centerLeft,
              child: Text(
                contactData[index].sectionKey,
                style: TextStyle(fontSize: 14.0, color: Color(0xff909090)),
              ));
        },
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: Colors.white,
            alignment: Alignment.centerLeft,
            child: ContactItem(
              contactVO: contactData[index],
            ),
          );
        },
        list: contactData,
      ),
    );
  }
}
