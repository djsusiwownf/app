import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Health",
      home: MainPage(),
      initialRoute: '/login',
      onGenerateRoute: _getRoute,
    );
  }
  Route<dynamic>? _getRoute(RouteSettings settings) {
    if (settings.name != '/login'){
      return null;
    }

    return MaterialPageRoute(builder: (BuildContext context) => Loginpage(),
        fullscreenDialog: true);
  }
}

class Loginpage extends StatefulWidget{
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<Loginpage>{
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24),
          children: [
            SizedBox(height: 80,),
            Column(
              children: [
                Image.asset('name'),
                SizedBox(height: 16,),
                Text('테스트'),
              ],
            ),
            SizedBox(height: 120,),
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                  filled: true,
                  labelText: 'ID'
              ),
            ),
            SizedBox(height: 12,),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                filled: true,
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            ButtonBar(
              children: [
                TextButton(onPressed: (){
                  _usernameController.clear();
                  _passwordController.clear();
                }, child: Text('CANCEL')),
                ElevatedButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text('NEXT'))
              ],
            )
          ],
        ),
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Health Togetehr"),
          ),
          body: TabBarView(
            children: [
              Home(),
              Page2(),
              Settings(),
            ],
          ),
          bottomNavigationBar: Container(
            color: Colors.white,
            child: Container(
              height: 70,
              padding: EdgeInsets.only(bottom: 10, top: 5),
              child: const TabBar(
                  labelColor: Colors.grey,
                  indicatorColor: Colors.grey,
                  unselectedLabelColor: Colors.black,
                  tabs: [
                    Tab(
                      icon: Icon(Icons.home),
                      text: 'Home',
                    ),
                    Tab(
                      icon: Icon(Icons.music_note),
                      text: 'Text',
                    ),
                    Tab(
                      icon: Icon(Icons.settings),
                      text: 'Setting',
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: (
          Padding(
            padding: EdgeInsets.fromLTRB(30, 40, 0, 0),
            child: Column(
              children: [
                Text("hihihi",style: TextStyle(
                  letterSpacing: 10,
                  fontSize: 30,
                ),
                ),
              ],
            ),
          )
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: (
          Padding(
            padding: EdgeInsets.fromLTRB(30, 40, 0, 0),
            child: Column(
              children: [
                Text("hi",style: TextStyle(
                  letterSpacing: 10,
                  fontSize: 30,
                ),
                ),
              ],
            ),
          )
      ),
    );
  }
}

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: (
          Padding(
            padding: EdgeInsets.fromLTRB(30, 40, 0, 0),
            child: Column(
              children: [
                Text("테스트",style: TextStyle(
                  letterSpacing: 10,
                  fontSize: 30,
                ),
                ),
              ],
            ),
          )
      ),
    );
  }
}