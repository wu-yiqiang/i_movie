import 'package:i_movie/http/request/base_request.dart';

class HiNet {
  HiNet._();
  static HiNet _instance;
  static HiNet getInstance() {
    if (_instance == null) {
      _instance = HiNet._();
    }
    return _instance;
  }

  Future fire<T>(BaseRequest request) async {
    var response = await send(request);
    var result = response['data'];
    return result;
  }

  Future<dynamic> send<T>(BaseRequest request) async {}
}
