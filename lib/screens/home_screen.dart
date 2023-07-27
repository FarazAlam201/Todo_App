import 'package:flutter/material.dart';
import 'package:todo_app/screens/todo_list_screen.dart';
import 'package:todo_app/widgets/drawer.dart';
import 'package:todo_app/widgets/drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentSelectedIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final List<Widget> _tabs = const [
    TodoListScreen(),
    Text("Search"),
    Text("Profile"),
    Text("Logout"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        backgroundColor: Colors.black,
        appBar: _showAppBar(),
        drawer: AppDrawer(),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentSelectedIndex,
          onTap: (int tappedIndex) {
            print(tappedIndex);
            setState(() {
              currentSelectedIndex = tappedIndex;
            });
          },
          backgroundColor: Theme.of(context).colorScheme.secondary,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Theme.of(context).colorScheme.primary,
          unselectedItemColor: Theme.of(context).colorScheme.onSecondary,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: "Search",
                tooltip: "You can search anything"),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Profile",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.logout), label: "Logout"),
          ],
        ),
        body: _tabs[currentSelectedIndex]);
  }

  AppBar _showAppBar() {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: InkWell(
          child: Image.asset("assets/sort.png"),
          onTap: () {
            _scaffoldKey.currentState?.openDrawer();
          },
        ),
      ),
      title: const Text(
        'Todo',
      ),
      centerTitle: true,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Image.asset(
            "assets/user.png",
            height: 42,
            width: 42,
          ),
        )
      ],
    );
  }
}
