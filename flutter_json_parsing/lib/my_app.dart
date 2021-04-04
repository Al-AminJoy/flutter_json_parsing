import 'package:flutter/material.dart';
import 'package:flutter_json_parsing/service.dart';
import 'package:flutter_json_parsing/user.dart';
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<User> _users=new List();
  bool _loading;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loading=true;

    Service.getUser().then((users) {
      setState(() {
       _users=users;
       _loading=false;
     });
     print(_users.length);
    });
  }
  showLoading(){
    if(_loading==true){
     return AppBar(
        title: Text('Loading Data'),
      );
    }
    else{
      return AppBar(
        title: Text('Data Loaded'),
      );
    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: showLoading(),
    body: Container(
      color: Colors.white,
      child: ListView.builder(
        itemCount: _users.length,
          itemBuilder: (context,index){
          User user=_users[index];
          return  ListTile(
              title: Text(user.name),
              subtitle: Text(user.email),
            );
      }),
    ),
    );
  }
}
