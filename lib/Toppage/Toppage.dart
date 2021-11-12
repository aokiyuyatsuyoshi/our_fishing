import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:untitled1/Info_Page/infoPage.dart';
import 'package:untitled1/Map_Page/Map_Page.dart';
import 'package:untitled1/Personal_Page/Personal_Page.dart';
import 'Toppage_Widget.dart';
import 'package:untitled1/provider_model.dart';

// final selectedIndex = StateProvider((ref) => 0); //グローバルに定義
enum PageType {
  first,
  second,
}

class homePage extends ConsumerWidget {
  const homePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final _selectedIndex = watch(selectedIndex);

    final _screens = [
      InfoPage(),
      MapPage(),
      PersonalPage(),
    ];
    return Theme(
      data: ThemeData(
          primaryIconTheme: IconThemeData(color: Colors.blue)), // use this
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "みんなのFishing",
            style: TextStyle(color: Colors.blue),
          ),
          backgroundColor: Colors.white.withOpacity(0.5),
        ),
        extendBodyBehindAppBar: true,
        drawer: Theme(
          data: ThemeData(
            canvasColor: Colors.transparent,
          ),
          child: Drawer(
            child: Container(
              child: ListView(
                children: <Widget>[
                  SizedBox(
                    height: 30,
                  ),
                  ListTileRow("規約とポリシー"),
                  WhiteDivider(),
                  ListTileRow("問題を報告する"),
                  WhiteDivider(),
                  ListTileRow("製作者に関して"),
                  WhiteDivider(),
                  ListTileRow("ログアウト"),
                  WhiteDivider(),
                ],
              ),
            ),
          ),
        ),
        body: _screens[_selectedIndex.state],
        bottomNavigationBar: SizedBox(
          child: BottomNavigationBar(
            selectedItemColor: Colors.blue,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.info,
                ),
                label: '釣り場情報',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.map,
                ),
                label: '釣り場マップ',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'マイページ',
              ),
            ],
            currentIndex: _selectedIndex.state,
            onTap: (int index) {
              _selectedIndex.state = index;
            },
            type: BottomNavigationBarType.fixed,
          ),
        ),
      ),
    );
  }
}
