import 'package:flutter/material.dart';

import 'pages/chat.dart';
import 'pages/dashboard.dart';
import 'pages/provile.dart';
import 'pages/settings.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentTab = 0;
  final List<Widget> screens = [
    const Dashboard(),
    const Chat(),
    const Profile(),
    const Settings()
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const Dashboard();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: PageStorage(
       bucket: bucket,
       child: currentScreen,
     ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child:  const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar:  BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height:60,
         child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: <Widget> [
             Row(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 MaterialButton(
                   minWidth: 30,
                     onPressed: (){
                       setState(() {
                         currentScreen = Dashboard();
                         currentTab = 0;
                       });
                     },

                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children:  [
                       Icon(
                     Icons.dashboard,
                     color: currentTab == 0 ? Colors.blue : Colors.grey,
                       ),
                       Text('Dashboard',
                       style: TextStyle(
                         color:  currentTab == 0 ?  Colors.blue: Colors.grey
                       ),
                       )
                     ],
                   ),
                 ),
                 MaterialButton(
                   minWidth: 30,
                   onPressed: (){
                     setState(() {
                       currentScreen = Chat();
                       currentTab = 1;
                     });
                   },

                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children:  [
                       Icon(
                         Icons.chat,
                         color: currentTab == 1 ? Colors.blue : Colors.grey,
                       ),
                       Text('Chat',
                         style: TextStyle(
                             color:  currentTab == 1 ?  Colors.blue: Colors.grey
                         ),
                       )
                     ],
                   ),
                 ),
               ],
             ),
             //left row
             Row(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 MaterialButton(
                   minWidth: 30,
                   onPressed: (){
                     setState(() {
                       currentScreen = Settings();
                       currentTab = 3;
                     });
                   },

                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children:  [
                       Icon(
                         Icons.chat,
                         color: currentTab == 3 ? Colors.blue : Colors.grey,
                       ),
                       Text('Settings',
                         style: TextStyle(
                             color:  currentTab == 3 ?  Colors.blue: Colors.grey
                         ),
                       )
                     ],
                   ),
                 ),
                 MaterialButton(
                   minWidth: 30,
                   onPressed: (){
                     setState(() {
                       currentScreen = Profile();
                       currentTab = 2;
                     });
                   },

                   child: Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children:  [
                       Icon(
                         Icons.dashboard,
                         color: currentTab == 2 ? Colors.blue : Colors.grey,
                       ),
                       Text('Chat',
                         style: TextStyle(
                             color:  currentTab == 2 ?  Colors.blue: Colors.grey
                         ),
                       )
                     ],
                   ),
                 ),
               ],
             ),
             // right row
           ],
          ),
        )
      ),
    );
  }
}
