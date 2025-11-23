import 'package:flutter/material.dart';
import 'package:i_movie/common/const.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});
  @override
  _MyPage createState() => _MyPage();
}

class _MyPage extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.qr_code_scanner_outlined, size: 24),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.qr_code_outlined, size: 24),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.dark_mode_outlined, size: 24),
            ),
          ],
        ),
        body: Container(
          child: Column(
            spacing: 20,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Flex(
                      direction: Axis.horizontal,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          spacing: 10,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(35),
                              child: Image.asset(
                                "images/user.jpg",
                                fit: BoxFit.fill,
                                width: 70,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Sutter", style: TextStyle(fontSize: 20)),
                                Text(
                                  "这个人什么也没有留下",
                                  style: TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Icon(
                          Icons.keyboard_arrow_right_outlined,
                          size: 24,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(child: Column(children: [Text('0'), Text("动态")])),
                  Expanded(child: Column(children: [Text('0'), Text("关注")])),
                  Expanded(child: Column(children: [Text('0'), Text("粉丝")])),
                ],
              ),
              Flex(
                direction: Axis.horizontal,
                children: [
                  Expanded(
                    flex: 1,
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      alignment: Alignment.center,
                      icon: Flex(
                        spacing: 4,
                        direction: Axis.vertical,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.history, size: 24, color: Colors.blue),
                          SizedBox(
                            child: Text(
                              '历史记录',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      onPressed: () {
                        // eventBus.emit(Events.NAVIGATE.name, v['path']);
                      },
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      alignment: Alignment.center,
                      icon: Flex(
                        spacing: 4,
                        direction: Axis.vertical,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star_outline,
                            size: 24,
                            color: Colors.blue,
                          ),
                          SizedBox(
                            child: Text(
                              '我的收藏',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      onPressed: () {
                        // eventBus.emit(Events.NAVIGATE.name, v['path']);
                      },
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text("更多服务"),
                          margin: EdgeInsets.symmetric(vertical: 10),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Column(
                            spacing: 20,
                            children: [
                              Flex(
                                direction: Axis.horizontal,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    spacing: 6,
                                    children: [
                                      Icon(
                                        Icons.settings,
                                        size: 22,
                                        color: primary,
                                      ),
                                      Text(
                                        "设置",
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ],
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_right_outlined,
                                    size: 24,
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                              Flex(
                                direction: Axis.horizontal,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    spacing: 6,
                                    children: [
                                      Icon(
                                        Icons.smart_toy,
                                        size: 22,
                                        color: primary,
                                      ),
                                      Text(
                                        "联系客服",
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ],
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_right_outlined,
                                    size: 24,
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          padding: EdgeInsets.all(padding),
        ),
      ),
    );
  }
}
