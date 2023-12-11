import 'package:flutter/material.dart';
import 'package:widgets_flutter/views/TabBar/tabs/tabOne.dart';
import 'package:widgets_flutter/views/TabBar/tabs/tabThree.dart';
import 'package:widgets_flutter/views/TabBar/tabs/tabtwo.dart';

class tabBarView extends StatefulWidget {
  const tabBarView({super.key});

  @override
  State<tabBarView> createState() => _tabBarViewState();
}

class _tabBarViewState extends State<tabBarView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('TABBAR'),
        ),
        body: const Column(
          children: [
            TabBar(
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.settings,
                    color: Colors.deepPurple,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.home,
                    color: Colors.deepPurple,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.home,
                    color: Colors.deepPurple,
                  ),
                ),
              ],
              unselectedLabelColor: Colors.deepPurple,
            ),
            Expanded(
              child: TabBarView(
                children: [
                  tabOne(),
                  tabTwo(),
                  tabThree(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
