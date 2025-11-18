import 'package:flutter/material.dart';
import 'package:i_movie/common/const.dart';

class LoginInput extends StatefulWidget {
  final String title;
  final String hint;
  final ValueChanged<String>? onChange;
  final ValueChanged<bool>? focusChange;
  final bool? lineStretch;
  final bool? obscureText;
  final TextInputType? keyboardType;
  const LoginInput({
    super.key,
    required this.title,
    required this.hint,
    this.lineStretch = false,
    this.obscureText = false,
    this.onChange,
    this.focusChange,
    this.keyboardType,
  });
  @override
  _LoginInputState createState() => _LoginInputState();
}

class _LoginInputState extends State<LoginInput> {
  final _focusNode = FocusNode();
  @override
  void initState() {
    super.initState();
    _focusNode.addListener(
      () => {
        if (widget.focusChange != null)
          {widget.focusChange!(_focusNode.hasFocus)},
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _focusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              width: 100,
              child: Text(widget.title, style: TextStyle(fontSize: 15)),
            ),
            _input(),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(left: widget.lineStretch! ? 15 : 0),
          child: Divider(
            height: 1,
            thickness: 0.5,
          ),
        )
      ],
    );
  }
  _input() {
    return Expanded(child: TextField(
      focusNode: _focusNode,
      onChanged: widget.onChange,
      obscureText: widget.obscureText!,
      keyboardType: widget.keyboardType,
      autofocus: widget.obscureText!,
      cursorColor: primary,
      style: TextStyle(fontSize: 16, color: Colors.black,fontWeight: FontWeight.w300),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(left: 20, right: 20),
        border: InputBorder.none,
        hintText: widget.hint ?? "",
        hintStyle: TextStyle(fontSize: 14, color: Colors.grey)
      ),
    ));
  }
}
