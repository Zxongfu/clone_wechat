import '../contacts/contact_vo.dart';
import 'package:flutter/material.dart';

class ContactItem extends StatelessWidget {
  final ContactVO? contactVO;
  final String? titleName;
  final String? imageName;

  ContactItem({this.contactVO, this.titleName, this.imageName});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            bottom: BorderSide(width: 0.5, color: Color(0xFFd9d9d9)),
          )),
      height: 52.0,
      child: ElevatedButton(
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white)),
        onPressed: () {},
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            imageName == null
                ? Image.network(
                    contactVO!.avatarUrl! != ''
                        ? contactVO!.avatarUrl!
                        : 'https://s.newtalk.tw/album/news/381/5e79d5ce54eff.jpg',
                    width: 36.0,
                    height: 36.0,
                    scale: 0.9,
                  )
                : Image.asset(
                    imageName!,
                    width: 36.0,
                    height: 36.0,
                  ),
            Container(
              margin: const EdgeInsets.only(left: 12.0),
              child: Text(
                titleName == null ? contactVO!.name! : titleName!,
                style: TextStyle(fontSize: 18.0, color: Color(0xFF353535)),
                maxLines: 1,
              ),
            )
          ],
        ),
      ),
    );
  }
}
