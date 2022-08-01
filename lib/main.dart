import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:home_screen_app/body.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.notifications_none),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        actions: const [
          Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 12.0, 0),
              child: CircleAvatar(
                radius: 15,
                child: Text(
                  'DT',
                  style: TextStyle(fontSize: 10),
                ),
              ))
        ],
      ),
      body: const SingleChildScrollView(
        child: Body(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.account_balance_wallet,
            ),
            label: '',
          ),
          const BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.repeat), label: ''),
          BottomNavigationBarItem(
              icon: Container(
                  alignment: Alignment.center,
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromARGB(255, 212, 235, 253),
                  ),
                  child: IconButton(
                    padding: const EdgeInsets.all(0),
                    onPressed: () {
                      showModalBottomSheet(
                          useRootNavigator: true,
                          context: context,
                          builder: ((context) {
                            return Container();
                          }));
                    },
                    icon: const Icon(Icons.add),
                    iconSize: 20,
                    color: Colors.blue.shade500,
                  )),
              label: ''),
          const BottomNavigationBarItem(icon: Icon(Icons.list), label: ''),
          const BottomNavigationBarItem(icon: Icon(Icons.settings), label: '')
        ],
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        selectedIconTheme: const IconThemeData(color: Colors.black),
        unselectedIconTheme: const IconThemeData(color: Colors.grey),
      ),
    );
  }
}
