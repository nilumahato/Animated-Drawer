import 'package:flutter/material.dart';
import 'package:animated_drawer/menu_item.dart';
import 'package:animated_drawer/homepage.dart';

class MenuItems {
  static const home = MenuItem('Home', Icons.home);
  static const about = MenuItem('About', Icons.info);
  static const type = MenuItem('Type', Icons.category);
  static const record = MenuItem('Record', Icons.record_voice_over);
  static const howDoesItWork = MenuItem('How Does It Work', Icons.help);
  static const notification = MenuItem('Notification', Icons.notifications);
  static const note = MenuItem('Note', Icons.note);

  static const all = <MenuItem>[
    home,
    about,
    type,
    record,
    howDoesItWork,
    notification,
    note
  ];
}

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),
            ...MenuItems.all
                .map((item) => buildMenuItem(context, item))
                .toList(),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem(BuildContext context, MenuItem item) {
    return ListTile(
      leading: Icon(item.icon),
      title: Text(item.title),
      onTap: () {
        switch (item.title) {
          case 'Home':
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const HomePage()));
            break;
          case 'About':
            Navigator.pushNamed(context, '/about');
            break;
          case 'Type':
            Navigator.pushNamed(context, '/type');
            break;
          case 'Record':
            Navigator.pushNamed(context, '/record');
            break;
          case 'How Does It Work':
            Navigator.pushNamed(context, '/howDoesItWork');
            break;
          case 'Notification':
            Navigator.pushNamed(context, '/notification');
            break;
          case 'Note':
            Navigator.pushNamed(context, '/note');
            break;
        }
      },
    );
  }
}
