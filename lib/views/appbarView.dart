import 'package:flutter/material.dart';
import 'package:widgets_flutter/constants/routes.dart';

class appbarView extends StatefulWidget {
  const appbarView({super.key});

  @override
  State<appbarView> createState() => _appbarViewState();
}

class _appbarViewState extends State<appbarView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        elevation: 0,
        title: const Text('APP BAR'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.person),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.share),
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.deepPurple,
          child: ListView(
            children: [
              const DrawerHeader(
                child: Center(
                  child: UserAccountsDrawerHeader(
                    decoration: BoxDecoration(color: Colors.lightGreen),
                    accountName: Text('Sumit Patel'),
                    accountEmail: Text('sumitjr3@gmail.com'),
                    currentAccountPictureSize: Size.square(50),
                    currentAccountPicture: CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 165, 255, 137),
                      child: Text(
                        "A",
                        style: TextStyle(fontSize: 30.0, color: Colors.blue),
                      ),
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text(
                  'home 1',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.of(context).pushNamed(mainActivityRoute);
                },
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text(
                  'home 2',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.of(context).pushNamed(mainActivityRoute);
                },
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text(
                  'home 3',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.of(context).pushNamed(mainActivityRoute);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
