import 'package:flutter/material.dart';
import 'package:my_app/style/App_text.dart';

class Items extends StatelessWidget {
  final String user;
  const Items({super.key, required this.user, required String caption, required String imageUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/temp/d.jpeg',
                width: 50,
                height: 50,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                user,
                style: AppText.subtitle3,
              )
            ],
          ),
          Image.asset('assets/temp/images.jpeg'),
          Text(
            'Everyone loves fried chicken, burgers, pizza & more! Take a juicy piece of chicken, coat it in a slightly spicy batter and fry until golden brown and crispy and you have the perfect fast food delivery choice in Karachi.',
            style: AppText.subtitle3,
          )
        ],
      ),
    );
  }
}
