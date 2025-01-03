import 'package:flutter/material.dart';

class Home_page extends StatelessWidget {
  final List<Map<String, String>> posts = [
    {
      'username': 'Babar Azam',
      'profilePic': 'assets/images/dp1.jpeg', // Local profile picture
      'postImage': 'assets/images/post1.jpeg', // Local post image
      'caption': 'Happy New Year 2025!'
    },
    {
      'username': 'Virat Kohli',
      'profilePic': 'assets/images/dp2.jpeg',
      'postImage': 'assets/images/post2.jpeg',
      'caption': 'I Love You Anushka !.'
    },
    {
      'username': 'Mohammad Amir',
      'profilePic': 'assets/images/dp3.jpeg',
      'postImage': 'assets/images/post3.jpeg',
      'caption': 'Happy Retirement ...'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Posts'),
        centerTitle: true,
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          final post = posts[index];
          return Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Username and Profile Picture
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(post['profilePic']!), // Local Image
                  ),
                  title: Text(
                    post['username']!,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: Icon(Icons.more_vert),
                ),

                // Post Image
                ClipRRect(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(15),
                  ),
                  child: Image.asset(
                    post['postImage']!,
                    height: 300,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),

                // Caption
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    post['caption']!,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[800],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
