import'package:flutter/material.dart';
import 'package:my_app/style/App_text.dart';

class Toolbar extends StatelessWidget implements PreferredSizeWidget {
 final String Title;
 final List<Widget>? actions;
  const Toolbar({super.key, required this.Title, this.actions });

  @override
  Widget build(BuildContext context) {
    return  AppBar(
        title: Text(Title,style: AppText.header2 ,),
        backgroundColor: Colors.white,
        actions: actions,
      );
  }
  
  @override
  Size get preferredSize => Size.fromHeight(60);
}