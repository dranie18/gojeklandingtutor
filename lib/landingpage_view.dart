
import 'package:flutter/material.dart';
import 'package:flutter_app/beranda/berandapage_view.dart';
import 'package:flutter_app/constant.dart';

class LandingPage extends StatefulWidget{
  @override
   _LandingPageState createState()=> new _LandingPageState();

}

class _LandingPageState extends State<LandingPage>{
  int _bottomNavCurrentIndex = 0;
  List<Widget> _container = [new BerandaPage(),new BerandaPage(),new BerandaPage(),new BerandaPage()];
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: _container[_bottomNavCurrentIndex],
      bottomNavigationBar: _buildBottomNavigation()
    );
  }
  Widget _buildBottomNavigation(){
    return new BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      onTap: (index){
        setState((){
          _bottomNavCurrentIndex = index;
        });
      },
      currentIndex: _bottomNavCurrentIndex,
      items: [
        BottomNavigationBarItem(
          activeIcon: Icon(Icons.home,color: GojekPallete.green,),
          icon: Icon(Icons.home, color: GojekPallete.grey),
          title: Text('Beranda',),
        ),

        BottomNavigationBarItem(
          activeIcon: Icon(Icons.assignment,color: GojekPallete.green,),
          icon: Icon(Icons.assignment, color: GojekPallete.grey),
          title: Text('Pesanan',),
        ),

        BottomNavigationBarItem(
          activeIcon: Icon(Icons.mail,color: GojekPallete.green,),
          icon: Icon(Icons.mail, color: GojekPallete.grey),
          title: Text('Inbox',),
        ),

        BottomNavigationBarItem(
          activeIcon: Icon(Icons.person,color: GojekPallete.green,),
          icon: Icon(Icons.person, color: GojekPallete.grey),
          title: Text('Akun',),
        )
      ],
    );
  }

}



