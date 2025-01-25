import '../model/user_model.dart';
import 'package:http/http.dart' as http;

class UserServices {
  Future<List<UserData>> getUserData() async {
    var response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    if (response.statusCode == 200) {
      return userDataFromJson(response.body);
    } else {
      return [];
    }
  }
}
