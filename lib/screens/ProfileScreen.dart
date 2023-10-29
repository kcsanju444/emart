import 'package:emart/services/Auth.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  void _signout() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Sign out"),
            content: Text("Are you sure you want to logout?"),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Cancle",
                    style: TextStyle(color: Colors.red),
                  )),
              TextButton(
                  onPressed: () {
                    Auth().signOut();
                    Navigator.pushNamed(context, '/login');
                  },
                  child: Text("Confirm")),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/luffy.jpg'),
            ),
            const Text(
              "Sanju KC",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "sanju@gmail.com",
              style: TextStyle(fontWeight: FontWeight.w200),
            ),
            SizedBox(height: 10),

            Divider(height: 30),

            //list view
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, '/editprofile');
                    },
                    leading: Icon(Icons.person),
                    title: Text("Edit profile"),
                    subtitle: Text("Change your profile details"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, '/changepassword');
                    },
                    leading: Icon(Icons.safety_check),
                    title: Text("Change Password"),
                    subtitle: Text("Change your password details"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, '/myproduct');
                    },
                    leading: Icon(Icons.shopping_bag),
                    title: Text("My product"),
                    subtitle: Text("Show all your product"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, '/favourite');
                    },
                    leading: Icon(Icons.favorite_border),
                    title: Text("My product"),
                    subtitle: Text("Show all your product"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                ],
              ),
            ),

            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                onPressed: () {
                  _signout();
                },
                child: Text("Logout"))
          ],
        ),
      ),
    );
  }
}
