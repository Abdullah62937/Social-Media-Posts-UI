import 'package:flutter/material.dart';
import 'package:my_app/Configuration/AppIcons.dart';
import 'package:my_app/Pages/Home_page.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_app/Pages/User_page.dart';
import 'package:my_app/Pages/chat_page.dart';

class Main_page extends StatefulWidget {
  const Main_page({super.key});

  @override
  State<Main_page> createState() => _Main_pageState();
}

class _Main_pageState extends State<Main_page> {
  Menu currentIndex = Menu.home;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[currentIndex.index],
        bottomNavigationBar: MyBottomNavigation(
            currentIndex: currentIndex,
            onTap: (value) {
              setState(() {
                currentIndex = value;
              });
            }));
  }

  final pages = [
    Home_page(),
    Center(
      child: Text('Favourite'),
    ),
    Center(
      child: Text('Add'),
    ),
    ChatPage(),
    
    UserPage(),
  ];
}

enum Menu { home, favourite, add, message, user }

class MyBottomNavigation extends StatelessWidget {
  final Menu currentIndex;
  final ValueChanged<Menu> onTap;
  const MyBottomNavigation(
      {super.key, required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      margin: EdgeInsets.all(20),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            left: 0,
            top: 17,
            child: Container(
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.all(Radius.circular(24)),
                ),
                child: Row(
                  children: [
                    Expanded(
                        child: IconButton(
                            onPressed: () => onTap(Menu.home),
                            icon: SvgPicture.asset(
                              AppIcons.icHome,
                              colorFilter: ColorFilter.mode(
                                 currentIndex == Menu.home?
                                  Colors.black:Colors.black.withOpacity(0.3), BlendMode.srcIn),
                            ))),
                    Expanded(
                        child: IconButton(
                            onPressed: () => onTap(Menu.favourite),
                            icon: SvgPicture.asset(
                              AppIcons.icFavorite,
                             colorFilter: ColorFilter.mode(
                                 currentIndex == Menu.favourite?
                                  Colors.black:Colors.black.withOpacity(0.3), BlendMode.srcIn),
                            ))),
                    Spacer(),
                    Expanded(
                        child: IconButton(
                            onPressed: () => onTap(Menu.message),
                            icon: SvgPicture.asset(
                              AppIcons.icMessage,
                              colorFilter: ColorFilter.mode(
                                 currentIndex == Menu.message?
                                  Colors.black:Colors.black.withOpacity(0.3), BlendMode.srcIn),
                            ))),
                    Expanded(
                        child: IconButton(
                            onPressed: () => onTap(Menu.user),
                            icon: SvgPicture.asset(
                              AppIcons.icUser,
                              colorFilter: ColorFilter.mode(
                                 currentIndex == Menu.user?
                                  Colors.black:Colors.black.withOpacity(0.3), BlendMode.srcIn),
                            )))
                  ],
                )),
          ),
          Positioned(
            right: 0,
            left: 0,
            top: 0,
            child: GestureDetector(
              onTap: () => (Menu.add),
              child: Container(
                  width: 65,
                  height: 65,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 208, 118, 218), shape: BoxShape.circle),
                  child: SvgPicture.asset(AppIcons.icAdd)),
            ),
          ),
        ],
      ),
    );
  }
}
