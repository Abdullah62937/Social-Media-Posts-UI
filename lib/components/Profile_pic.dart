import 'package:flutter/material.dart';
import 'package:my_app/Configuration/AppIcons.dart';

class ProfilePic extends StatelessWidget {
  final double size;

  const ProfilePic({super.key, this.size = 40});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(450)),
        child: Image.asset(AppIcons.Abdullah, height: size,width: size,));
  }
}
