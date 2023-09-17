import 'package:http/http.dart' as http;
import 'package:flutter_application/helpers/constants.dart';

class Api
{
  fetchData() async
  {
    var data = await http.get(Uri.parse(TEST_LINK));
    print("recieved data:" + data.body);
  }
}
final api = Api();

  