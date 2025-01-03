import 'package:flutter/material.dart';
import 'package:my_app/Configuration/AppString.dart';
import 'package:my_app/components/Profile_pic.dart';
import 'package:my_app/components/Toolbar.dart';
import 'package:my_app/style/App_text.dart';

enum Gender { none, male, female, other }

class Edit_profile extends StatefulWidget {
  const Edit_profile({super.key});

  @override
  State<Edit_profile> createState() => _Edit_profileState();
}

class _Edit_profileState extends State<Edit_profile> {
  var gender = Gender.none;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Toolbar(Title: 'Edit Profile'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Stack(
                children: [
                  ProfilePic(
                    size: 150,
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(18))),
                        child: Icon(Icons.camera_alt_outlined)),
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              TextField(
                  decoration: InputDecoration(
                hintText: AppStrings.username,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                filled: true,
                fillColor: Colors.purple.withOpacity(0.1),
              )),
              SizedBox(
                height: 10,
              ),
              TextField(
                  decoration: InputDecoration(
                hintText: AppStrings.firstName,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                filled: true,
                fillColor: Colors.purple.withOpacity(0.1),
              )),
              SizedBox(
                height: 10,
              ),
              TextField(
                  decoration: InputDecoration(
                hintText: AppStrings.lastName,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                filled: true,
                fillColor: Colors.purple.withOpacity(0.1),
              )),
              SizedBox(
                height: 10,
              ),
              TextField(
                  decoration: InputDecoration(
                hintText: AppStrings.Bio,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                filled: true,
                fillColor: Colors.purple.withOpacity(0.1),
              )),
              SizedBox(
                height: 25,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.purple.withOpacity(0.1)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(' Gender:',style: AppText.subtitle1,),
                    Row(
                      children: [
                        Expanded(
                          child: RadioListTile(
                              title: Text(AppStrings.male),
                              value: gender,
                              groupValue: Gender.male,
                              contentPadding: EdgeInsets.zero,
                              onChanged: (value) {
                                setState(() {
                                  gender = Gender.male;
                                });
                              }),
                        ),
                        Expanded(
                          child: RadioListTile(
                              title: Text(AppStrings.female),
                              value: gender,
                              groupValue: Gender.female,
                              contentPadding: EdgeInsets.zero,
                              onChanged: (value) {
                                setState(() {
                                  gender = Gender.female;
                                });
                              }),
                        ),
                        Expanded(
                          child: RadioListTile(
                              title: Text(AppStrings.other),
                              value: gender,
                              groupValue: Gender.other,
                              contentPadding: EdgeInsets.zero,
                              onChanged: (value) {
                                setState(() {
                                  gender = Gender.other;
                                });
                              }),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: StadiumBorder(),
                backgroundColor: Colors.purple,
                maximumSize:Size(180, 60),
                minimumSize: Size(180, 60)
              ), child: Text("Save",style: TextStyle(fontSize: 16,color: Colors.white),))
            ],
          ),
        ),
      ),
    );
  }
}
