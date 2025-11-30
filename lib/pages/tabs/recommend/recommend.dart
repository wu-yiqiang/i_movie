import 'package:flutter/material.dart';
import 'package:i_movie/common/const.dart';

class RecommendPage extends StatefulWidget {
  const RecommendPage({super.key});

  @override
  _RecommendPage createState() => _RecommendPage();
}

class _RecommendPage extends State<RecommendPage> {
  List items = [
    {
      'id': 12,
      'label': '如何将windows 11任务栏订制成dock栏风格',
      'account': '计算机教育',
      'image':
          "https://gips1.baidu.com/it/u=1025173963,4205445645&fm=3028&app=3028&f=JPEG&fmt=auto?w=3200&h=3200",
    },
    {
      'id': 13,
      'label': '通用汽车停用中国供应商零部件',
      'account': '新闻早报',
      'image':
          "https://gips1.baidu.com/it/u=1025173963,4205445645&fm=3028&app=3028&f=JPEG&fmt=auto?w=3200&h=3200",
    },
    {
      'id': 14,
      'label': 'async await底层是如何实现的',
      'account': '计算机教育',
      'image':
          "https://gips1.baidu.com/it/u=1025173963,4205445645&fm=3028&app=3028&f=JPEG&fmt=auto?w=3200&h=3200",
    },
    {
      'id': 15,
      'label': '你真的理解vue的生命周期吗？',
      'account': '计算机教育',
      'image':
          "https://gips1.baidu.com/it/u=1025173963,4205445645&fm=3028&app=3028&f=JPEG&fmt=auto?w=3200&h=3200",
    },
    {
      'id': 16,
      'label': 'Go语言从入门到精通',
      'account': 'go语言中文社区',
      'image':
          "https://gips1.baidu.com/it/u=1025173963,4205445645&fm=3028&app=3028&f=JPEG&fmt=auto?w=3200&h=3200",
    },
    {
      'id': 17,
      'label': 'ubuntu如何升级到25.10版本',
      'account': '麦嘎登Linux',
      'image':
          "https://gips1.baidu.com/it/u=1025173963,4205445645&fm=3028&app=3028&f=JPEG&fmt=auto?w=3200&h=3200",
    },
    {
      'id': 18,
      'label': '个人所得税率大涨27.26%',
      'account': '新闻早报',
      'image':
          "https://gips1.baidu.com/it/u=1025173963,4205445645&fm=3028&app=3028&f=JPEG&fmt=auto?w=3200&h=3200",
    },
    {
      'id': 19,
      'label': '网络是如何连接的',
      'account': '网络社区',
      'image':
          "https://gips1.baidu.com/it/u=1025173963,4205445645&fm=3028&app=3028&f=JPEG&fmt=auto?w=3200&h=3200",
    },
    {
      'id': 20,
      'label': '如何计算子网掩码',
      'account': 'linux教育',
      'image':
          "https://gips1.baidu.com/it/u=1025173963,4205445645&fm=3028&app=3028&f=JPEG&fmt=auto?w=3200&h=3200",
    },
  ];

  Future<void> _onRefresh() async {
    await Future.delayed(Duration(seconds: 2));
    // setState(() {
    //   items.addAll(
    //     List.generate(20, (i) => 'New item ${i + items.length + 1}'),
    //   );
    // });
  }

  handleFresh() {
    Future<void> _onRefresh() async {
      await Future.delayed(Duration(seconds: 2)); // 模拟网络请求
      // 更新数据
      setState(() {
        this.items.addAll(
          List.generate(20, (i) => 'New item ${i + items.length + 1}'),
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(padding),
        child: RefreshIndicator(
          color: primary,
          onRefresh: _onRefresh,
          child: GridView.builder(
            shrinkWrap: true,
            itemCount: 9,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 10,
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              childAspectRatio: 0.77,
            ),
            itemBuilder: (context, index) {
              return Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 4,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      child: Image.network(
                        items[index]['image']!,
                        fit: BoxFit.fitWidth,
                        alignment: Alignment.center,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        // border: BoxBorder.all(color: primary),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            items[index]['label'],
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 16),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                items[index]['account'],
                                style: TextStyle(fontSize: 14),
                              ),
                              Icon(Icons.more_vert, size: 16),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                // padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: const Color.fromARGB(239, 247, 247, 247),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
