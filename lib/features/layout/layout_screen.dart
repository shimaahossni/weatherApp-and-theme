import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:themelanguage/config/setting_provider.dart';
import 'package:themelanguage/features/search/search_layout.dart';

class LayoutScreen extends StatefulWidget {
  static const String routeApp = 'LayoutScreen';
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  @override
  Widget build(BuildContext context) {
    var vm=Provider.of<SettingProvider>(context);

    return Scaffold(
      body: vm.screens[vm.currentIndex],

      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 12.0,
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        child: BottomNavigationBar(
          currentIndex: vm.currentIndex,
          onTap: vm.changeIndex,
          elevation: 0,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.list), label: "light"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "dark"),
          ],),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
              builder: (context) => SearchLayout(),));
        },
        child: Icon(Icons.search,color: Colors.white,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

    );
  }
}
