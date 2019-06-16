import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(children: <Widget>[
      UserAccountsDrawerHeader(
        accountName:
            Text('xxxxx', style: TextStyle(fontWeight: FontWeight.bold)),
        accountEmail: Text('sxss@222.com'),
        currentAccountPicture: CircleAvatar(
          backgroundImage: NetworkImage(
              'https://avatars3.githubusercontent.com/u/225962?s=460&v=4'),
        ),
        decoration: BoxDecoration(
            // color: Colors.yellow[400],
            image: DecorationImage(
                image: NetworkImage(
                    'https://ss1.bdstatic.com/kvoZeXSm1A5BphGlnYG/skin/320.jpg?2'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.yellow[400].withOpacity((0.6)),
                    BlendMode.hardLight))),
      ),
      ListTile(
        title: Text('Message', textAlign: TextAlign.right),
        trailing: Icon(Icons.message, color: Colors.black12, size: 22.0),
        onTap: () => {Navigator.pop(context)},
      ),
      ListTile(
        title: Text('Favorite', textAlign: TextAlign.right),
        trailing: Icon(Icons.favorite, color: Colors.black12, size: 22.0),
        onTap: () => {Navigator.pop(context)},
      ),
      ListTile(
        title: Text('Settings', textAlign: TextAlign.right),
        trailing: Icon(Icons.settings, color: Colors.black12, size: 22.0),
        onTap: () => {Navigator.pop(context)},
      )
    ]));
  }
}
