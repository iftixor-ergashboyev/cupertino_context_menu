import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("Profile Image"),
        leading: Icon(CupertinoIcons.left_chevron, color: CupertinoColors.activeBlue),
        trailing: Icon(CupertinoIcons.checkmark_alt, color: CupertinoColors.activeBlue),
      ),
        child:  Center(
          child: SizedBox(
            height: 100,
            width: 100,
            child: CupertinoContextMenu(
              child: Image.network('https://em-content.zobj.net/source/apple/391/person-beard_medium-skin-tone_1f9d4-1f3fd_1f3fd.png'),
              actions: <Widget> [
                CupertinoContextMenuAction(
                    child: Text("Camera"),
                  onPressed: () {
                      Navigator.pop(context);
                  },
                ),
                CupertinoContextMenuAction(
                  child: Text("Gallery"),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        )
    );
  }
}

