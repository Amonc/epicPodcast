import 'package:epicpodcast/utils/all_colors.dart';
import 'package:epicpodcast/views/pages/connect_page.dart';
import 'package:epicpodcast/views/pages/home_page.dart';
import 'package:epicpodcast/views/pages/post_page.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _PostPageState();
}

class _PostPageState extends State<Dashboard> {
  int _selectedItem = 0;
  final List<Widget> _pages = [
    const HomePage(),
    const PostPage(),
    Container(),
    const ConnectPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedItem,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (v) {
          setState(() {
            _selectedItem = v;
          });
        },
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedItem,
        selectedItemColor: AllColors.blue,
        unselectedItemColor: AllColors.darkGrey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.contactless_sharp), label: "Episodes"),
          BottomNavigationBarItem(icon: Icon(Icons.event), label: "Events"),
          BottomNavigationBarItem(
              icon: Icon(Icons.spatial_audio_off), label: "Connect")
        ],
      ),
    );
  }
}
