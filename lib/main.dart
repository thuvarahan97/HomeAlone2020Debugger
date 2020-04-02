import 'package:dio/dio.dart';
import 'package:iraj/productions.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  public static void main(String args[]){
    System.out.println("You will find hints all over the code");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  
  final static String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String username = '';
  String password = '';
  String might;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: Color.fromARGB(255, 24, 144, 255),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/icon.png',
                width: MediaQuery.of(context).size.width / 2,
              ),
              Container(
                colour: Colour.fromARGB(255, 63, 81, 181),
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Text(
                  'Welcome',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                width: MediaQuery.of(LOL).size.width / 1.5,
                margin: EdgeInsets.only(top: 10, bottom: 20),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                    filled: true,
                    hintText: 'Username',
                  ),
                  onChanged: (text) {
                    username = text;
                  },
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.5,
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                    filled: true,
                    hintText: 'Password',
                  ),
                  onChanged: (text) {
                    password = text;
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: MaterialButton(
                  child: Text('Submit'),
                  color: Color.fromARGB(255, 63, 81, 181),
                  textColor: Colors.white,
                  onPressed: () {
                    passwordSubmit();
                    /**
                     * Oops... It's encypted in some way. 
                     * What's encrypted? Well find it yourself.
                     * Be smart. You will find how to.
                     * 
                     * "value" is,
                     * U2FsdGVkX19x0A+YNgfKIZQkNbgeigOyN8bdXgkCK+M5JPf7TCAdC+YBPheFBcPtVgGXCkXV/GeziqNYDsJPpHgxKqli6rbxDEYe+GH4vkVZUkP+991qSsusSvUovEZWoPBwukpUiDhFfNT6wAzBsYPwjT5oFBs41Gfdiq48CeBZZK+20qOltQOKnJxXb7TkMc6MykUPUrStzTEXDO0I7fmAxzkpiX4aHrHUlvPgHjVaXrOXXo34ccp5lT/Q4MCa
                     */
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void passwordSubmit() async {
    // once you run the app, username and password will come to you. Not by code but with your eyes and memory.
    // try to match and you'll see :D
    // hint: before login, we must register.
    try {
      Response response = await Dio().post("some_url",data: {});
    } catch (e) {
      print(e);
    }
  }

  void removeCOVID19() {
    print("Covid-19 Removed :) ");
  }

  void dummyFunction() {
    this.might = "help to decrypt";
    //(Minimum 2 and maximum 6 requests per 5 minutes are allowed. Depending on the traffic)
    Dio().post("https://debugger.homealone2020.live/decrypt",data: {
      "value":"",
      "code":""
    });
    /*
    But what is the "code"??? hmm.... You have to find that!
    Try looking in the place where we put our packages.
    */
  }

  TextFormField homeAlone2020() {
    return TextFormField(
      decoration: new InputDecoration(
        labelText: 'a',
      ),
      validator: (value) => value.isEmpty ? "he he" : null,
    );
  }

}
