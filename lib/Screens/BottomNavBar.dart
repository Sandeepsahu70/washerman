import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:kridaverse_poject/Screens/Account.dart';
import 'package:kridaverse_poject/Screens/HomeScreen.dart';
import 'package:kridaverse_poject/Screens/Notification.dart';
import 'package:kridaverse_poject/Screens/OrderScreen.dart';
class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> with SingleTickerProviderStateMixin{
 int _selectindex=0;
 late TabController _tabController;

 @override
 void initState(){
   super.initState();
   _tabController=TabController(length: 4, vsync: this);
   _tabController.addListener(() {
     setState(() {
       _selectindex=_tabController.index;
     });
   });
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     bottomNavigationBar:  SafeArea(
       child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              // border: Border.all(),
            // borderRadius: BorderRadius.circular(20.0)
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: GNav(
              backgroundColor: Colors.white,
              color: Colors.grey,
              activeColor: Colors.blueAccent.shade400,
              tabBackgroundColor: Colors.lightBlue.shade200,
              padding: EdgeInsets.all(8.0),
              gap: 5,
              tabs: [
                GButton(icon: Icons.home_outlined,text: "Home",),
                GButton(icon: Icons.shopping_bag_outlined,text: "Order",),
                GButton(icon: Icons.notification_add_outlined,text: "Notification",),
                GButton(icon: Icons.perm_identity,text: "Account",),
              ],
              selectedIndex: _selectindex,
              onTabChange: (index){
                _tabController.index=index;
                },
            ),
          ),
        ),
     ),
      body: TabBarView(
        controller: _tabController,
        children: [
          HomeScreen(),
          OrderScreen(),
          NotificationScreen(),
          AccountScreen()
        ],
      ),

    );
 }
  @override
  void dispose(){
   _tabController.dispose();
   super.dispose();
  }
}
