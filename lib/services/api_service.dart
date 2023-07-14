import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {
  final String baseUrl =
      'http://apis.data.go.kr/3450000/parkingLotOpenSharedService/parkingLotOpenshared?serviceKey=nwFe1iYXo5NL2z6yTKP2KjBGMP66OS5yhSLhL6P4Flb2k5bxzK%2F9cITnYVX%2BdHqysj8JUFZkZ6giylrVfeJ9eQ%3D%3D&numOfRows=10&pageNo=1&resultType=json';

  void getParkingLots() async {
    final url = Uri.parse(baseUrl);
    await http.get(url);
    final response = await http.get(url);
    if (response.statusCode == 200) {
      // var responseString = utf8.decode(response.bodyBytes);
      // print(responseString);
      final List<dynamic> parkingLots = jsonDecode(response.body);
      for (var parkingLotOpenShared in parkingLots) {
        print(parkingLotOpenShared);
      }
      return;
    }
    throw Error();
  }
}
