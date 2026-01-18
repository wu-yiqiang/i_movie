
import 'package:flutter/material.dart';
import 'package:i_movie/pages/settings/settings.dart';
import 'package:i_movie/pages/tabs/Home/home.dart';

class Navigate {
  static final Map<String, WidgetBuilder> routeTable = {
    '/': (context) => const HomePage(),
    // '/setting': (context) => DetailScreen(arguments: ModalRoute.of(context)!.settings.arguments as String),
    '/settings': (context) => const SettingsPage(),
  };

  // 页面跳转（带返回按钮）
  static Future<T?> pushNamed<T extends Object?>(
    BuildContext context,
    String routeName, {
    Object? arguments,
  }) {
    return Navigator.pushNamed<T>(context, routeName, arguments: arguments);
  }

  // 页面跳转并替换当前页面（无返回按钮）
  static Future<T?> pushReplacementNamed<T extends Object?>(
    BuildContext context,
    String routeName, {
    Object? arguments,
  }) {
    return Navigator.pushReplacementNamed<T, Object?>(
      context,
      routeName,
      arguments: arguments,
    );
  }

  // 弹出当前页面（返回上一页）
  static void pop(BuildContext context, [Object? result]) {
    Navigator.of(context).pop(result);
  }

  // 弹出当前页面并返回数据
  static void popWithResult(BuildContext context, Object? result) {
    Navigator.of(context).pop(result);
  }

  // 弹出所有页面并跳转到指定页面
  static Future<T?> pushAndRemoveUntil<T extends Object?>(
    BuildContext context,
    String routeName, {
    Object? arguments,
  }) {
    return Navigator.of(context).pushNamedAndRemoveUntil(
      routeName,
      (route) => false,
      arguments: arguments,
    );
  }

  // 处理未注册的路由
  // static Route<dynamic> onUnknownRoute(RouteSettings settings) {
  //   return MaterialPageRoute(
  //     builder: (context) => const ErrorScreen(),
  //     settings: settings,
  //   );
  // }
}
