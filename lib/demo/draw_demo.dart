import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          // DrawerHeader(
          //   child: Text('Header'.toUpperCase()),
          //   decoration: BoxDecoration(
          //     color: Colors.grey[100],
          //   ),
          // ),
          UserAccountsDrawerHeader(
            accountName: Text(
              'kpeng',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            accountEmail: Text('294336370@qq.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://yt3.ggpht.com/a-/AOh14GhO-fs2LNAwyL-83pZyTJcOIlDQaQIAAaWqLw=s68-c-k-c0x00ffffff-no-rj-mo'),
            ),
            decoration: BoxDecoration(
              color: Colors.yellow[400],
              image: DecorationImage(
                  image: NetworkImage(
                      'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1142895166,2350757107&fm=26&gp=0.jpg'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.yellow[400].withOpacity(0.6),
                      BlendMode.hardLight)), //滤镜
            ),
          ),
          ListTile(
            title: Text(
              'Message',
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              Icons.message,
              color: Colors.black12,
              size: 22.0,
            ),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text(
              'Favorite',
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              Icons.favorite,
              color: Colors.black12,
              size: 22.0,
            ),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text(
              'Settings',
              textAlign: TextAlign.right,
            ),
            trailing: Icon(
              Icons.settings,
              color: Colors.black12,
              size: 22.0,
            ),
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    ); //扫动抽屉手势endDrawer 是显示在右边
  }
}
