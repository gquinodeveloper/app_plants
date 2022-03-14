import 'package:flutter/material.dart';
import 'package:g58_appdesign/models/user_model.dart';
import 'package:g58_appdesign/providers/user_provider.dart';
import 'package:g58_appdesign/screens/contact/widgets/contact_maps.dart';
import 'package:g58_appdesign/theme/app_theme.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  final _userProvider = UserProvider();
  List<UserModel> users = [];
  @override
  void initState() {
    _loadUser();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  _loadUser() async {
    try {
      users = await _userProvider.getUsers();
      setState(() {});
    } catch (e) {
      print("Error -> $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      backgroundColor: AppTheme.kBackground,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppTheme.kBackground,
        leading: Container(),
        centerTitle: false,
        title: const Text(
          "Contacts",
          style: TextStyle(
            fontSize: 22.0,
            color: AppTheme.kDark,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (c, a1, a2) => ContactMaps(),
                  transitionsBuilder: (c, anim, a2, child) => FadeTransition(
                    opacity: anim,
                    child: child,
                  ),
                  transitionDuration: const Duration(
                    milliseconds: 800,
                  ),
                ),
              );
            },
            leading: CircleAvatar(
              backgroundImage: NetworkImage("${users[index].avatar}"),
            ),
            title: Text(
              "${users[index].firstName} ${users[index].lastName}",
              style: const TextStyle(
                fontSize: 14.0,
                color: AppTheme.kDark,
                fontWeight: FontWeight.w600,
              ),
            ),
            subtitle: Text(
              "${users[index].email}",
              style: const TextStyle(
                fontSize: 12.0,
                color: Colors.black38,
              ),
            ),
          );
        },
      ),
    );
  }
}
