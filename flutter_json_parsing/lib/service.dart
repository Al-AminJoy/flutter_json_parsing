import 'package:http/http.dart' as http;
import 'user.dart';
class Service{
  static const String url='https://jsonplaceholder.typicode.com/users';

static Future<List<User>> getUser() async {
 try{
  final response=await http.get(url);
  if(200==response.statusCode){
  final List<User> users=userFromJson(response.body);
  return users;
  }
  {
   return List<User>();
  }
  }
  catch(e){
   return List<User>();
  }
}}
