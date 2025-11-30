import 'package:flutter/material.dart';
import 'package:i_movie/common/const.dart';
import 'package:i_movie/util/EventBus.dart';
import 'package:i_movie/widgets/IconsButton.dart';

HomeAppbar() {
  return AppBar(
    centerTitle: true,
    leading: IconButton(
      onPressed: () {
        eventBus.emit(Events.BOTTOMBAR.name, 1);
      },
      enableFeedback: false,
      highlightColor: WhiteColor,
      icon: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: Image.asset("images/user.jpg", fit: BoxFit.fill),
      ),
    ),
    title: Container(
      height: 34,
      child: TextField(
        cursorColor: primary,
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: EdgeInsets.only(left: 10),
            child: Icon(Icons.search, color: Colors.grey),
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          alignLabelWithHint: false,
          prefixIconConstraints: BoxConstraints(),
        
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(24),
            borderSide: BorderSide(color: Colors.grey, width: 1.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 1.0),
            borderRadius: BorderRadius.circular(24),
          ),
          hintText: '搜索',
          hintStyle: TextStyle(fontSize: 14),
        ),
        onChanged: (text) {},
      ),
    ),

    actions: [
      IconsButton(
        color: primary,
        icon: Icons.email_outlined,
        size: 28,
        onPress: () {}
      ),
    ],
  );
}
