import 'package:flutter/material.dart';
import 'package:my_app/Configuration/AppIcons.dart';
import 'package:my_app/Configuration/AppRoutese.dart';
import 'package:my_app/components/Profile_pic.dart';
import 'package:my_app/components/Toolbar.dart';
import 'package:my_app/style/App_text.dart';

  enum Profile{Edit,Logout}

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(
        Title: 'abdullah_faisal',
        actions: [PopupMenuButton<Profile>(onSelected: 
        (value){
          switch (value){
            case Profile.Edit:
            Navigator.of(context).pushNamed(AppRoutes.editProfile);
            break;
            case Profile.Logout:
            Navigator.of(context).pushNamed(AppRoutes.login);
            break;
            default:
          }
        }, itemBuilder: (BuildContext context) {
          return [ PopupMenuItem(child: Text('Edit'),value: Profile.Edit,),
          PopupMenuItem(child: Text('Logout'),value: Profile.Logout,)];
          },)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
           ProfilePic(size: 90,),
            SizedBox(
              height: 10,
            ),
            Text(
              'Abdullah Faisal',
              style: AppText.header2,
            ),
            Text(
              'abdullahfaisal@gmail.com',
              style: AppText.subtitle3,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text(
                      '1,547',
                      style: AppText.header2,
                    ),
                    Text('Followers')
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '0',
                      style: AppText.header2,
                    ),
                    Text('Post')
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '998',
                      style: AppText.header2,
                    ),
                    Text('Following')
                  ],
                )
              ],
            ),
            Divider(
              height: 25,
            ),
            SizedBox(height: 90,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("No post available " ,style: TextStyle(fontSize: 18 ) ,)
              ],
            )
          ],
        
        ),
        
      ),
    );
  }
}
