import 'package:clone_wechat/contacts/contact_vo.dart';
import 'package:flutter/material.dart';

class ContactSliderList extends StatefulWidget {
  final List<ContactVO> list;
  final IndexedWidgetBuilder? headerBuilder;
  final IndexedWidgetBuilder itemBuilder;
  final IndexedWidgetBuilder sectionBuilder;

  ContactSliderList(
      {Key? key,
      required this.list,
      this.headerBuilder,
      required this.itemBuilder,
      required this.sectionBuilder})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ContactState();
  }
}

class _ContactState extends State<ContactSliderList> implements SectionIndexer {
  Color _pressColor = Colors.transparent;
  final ScrollController _scrollController = new ScrollController();

  bool _onNotification(ScrollNotification notification) {
    return true;
  }

  _isShowHeaderView(index) {
    if (index == 0 && widget.headerBuilder != null) {
      return Offstage(
        offstage: false,
        child: widget.headerBuilder!(context, index),
      );
    }
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: [
          NotificationListener(
            onNotification: _onNotification,
            child: ListView.builder(
                controller: _scrollController,
                physics: const AlwaysScrollableScrollPhysics(),
                itemCount: widget.list.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        _isShowHeaderView(index),
                        Offstage(
                          offstage: _shouldShowHeader(index),
                          child: widget.sectionBuilder(context, index),
                        ),
                        Column(
                          children: [widget.itemBuilder(context, index)],
                        )
                      ],
                    ),
                  );
                }),
          ),
          Positioned(
              right: 0.0,
              child: Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height,
                width: 32.0,
                color: _pressColor,
                child: GestureDetector(
                  onTapDown: (TapDownDetails t) {
                    //手指按下
                    setState(() {
                      _pressColor = Colors.grey;
                    });
                  },
                  onTapUp: (TapUpDetails t) {
                    //手指弹起
                    setState(() {
                      _pressColor = Colors.transparent;
                    });
                  },
                  onVerticalDragStart: (DragStartDetails details) {
                    //開始垂直滑動
                    setState(() {
                      _pressColor = Colors.grey;
                    });
                  },
                  onVerticalDragEnd: (DragEndDetails details) {
                    //結束垂直滑動
                    setState(() {
                      _pressColor = Colors.transparent;
                    });
                  },
                  onVerticalDragUpdate: (DragUpdateDetails details) {
                    //手指垂直滑动时
                  },
                  child: ListView.builder(
                      controller: ScrollController(),
                      itemCount: sliderBarKey.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          alignment: Alignment.center,
                          height: 17.0,
                          child: Text(sliderBarKey[index]),
                        );
                      }),
                ),
              ))
        ],
      ),
    );
  }

  @override
  listScrollToPosition(int index) {
    //重要方法：根據滑動的字母返回listview中的位置。
    for (var i = 0; i < widget.list.length; i++) {
      if (sliderBarKey[index] == "☆" || sliderBarKey[index] == "↑") {
        _scrollController.jumpTo(0.0);
        setState(() {});
        return -1;
      } else if (widget.list[i].sectionKey == sliderBarKey[index]) {
        return i;
      }
    }
    return -1;
  }

  bool _shouldShowHeader(int position) {
    if (position < 0) {
      return false;
    }
    if (position == 0) {
      return false;
    }
    if (position != 0 &&
        widget.list[position].sectionKey !=
            widget.list[position - 1].sectionKey) {
      return false;
    }
    return true;
  }
}

abstract class SectionIndexer {
  listScrollToPosition(int index);
}

const sliderBarKey = <String>[
  "↑",
  "☆",
  "A",
  "B",
  "C",
  "D",
  "E",
  "F",
  "G",
  "H",
  "I",
  "J",
  "K",
  "L",
  "M",
  "N",
  "O",
  "P",
  "Q",
  "R",
  "S",
  "T",
  "U",
  "V",
  "W",
  "X",
  "Y",
  "Z",
  "#"
];
