import 'package:flutter/material.dart';
import 'package:fluid_bottom_nav_bar/fluid_bottom_nav_bar.dart';
import 'pages/account.dart';
import 'pages/home.dart';
import 'pages/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primaryColor: Color(0xffFC427B),
          colorScheme:
              ThemeData().colorScheme.copyWith(primary: Color(0xffFC427B))),
      home: TopBar(),
    );
  }
}

class TopBar extends StatefulWidget {
  TopBar({Key? key}) : super(key: key);

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  Widget? _child;

  @override
  void initState() {
    _child = Homepage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leadingWidth: 70,
          toolbarHeight: 80,
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=800"),
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications,
                  color: Colors.black,
                  size: 30.0,
                )),
          ]),
      body: _child,
      bottomNavigationBar: FluidNavBar(
        icons: [
          FluidNavBarIcon(
              icon: Icons.chat_rounded, extras: {"label": "partner"}),
          FluidNavBarIcon(
              icon: Icons.account_circle_sharp, extras: {"label": "partner"}),
          FluidNavBarIcon(
              icon: Icons.home,
              backgroundColor: Theme.of(context).primaryColor,
              extras: {"label": "bookmark"}),
          FluidNavBarIcon(
              icon: Icons.emoji_people_sharp, extras: {"label": "partner"}),
          FluidNavBarIcon(icon: Icons.menu, extras: {"label": "partner"}),
        ],
        onChange: _handleNavigationChange,
        style: FluidNavBarStyle(
            iconUnselectedForegroundColor: Colors.white,
            iconSelectedForegroundColor: Colors.white,
            barBackgroundColor: Theme.of(context).primaryColor),
        scaleFactor: 1.5,
        defaultIndex: 2,
        itemBuilder: (icon, item) => Semantics(
          label: icon.extras!["label"],
          child: item,
        ),
      ),
    );
  }

  void _handleNavigationChange(int index) {
    print(index);
    setState(() {
      switch (index) {
        case 2:
          _child = Homepage();
          break;
        case 1:
          _child = Account();
          break;
      }
      _child = AnimatedSwitcher(
        switchInCurve: Curves.easeOutCubic,
        switchOutCurve: Curves.easeIn,
        duration: Duration(milliseconds: 500),
        child: _child,
      );
    });
  }
}
