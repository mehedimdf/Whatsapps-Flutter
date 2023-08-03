import 'package:flutter/material.dart';
import 'package:whatsapps/widget/ChatsWidget.dart';
import 'package:whatsapps/widget/StatusWidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child:Scaffold(
        backgroundColor: Color(0xffece5dd),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: AppBar(
            elevation: 0,
            title: Padding(
              padding: EdgeInsets.only(top: 15),
              child: Text(
                "WhatsApp",
                style: TextStyle(fontSize: 21),
              ),
            ),
            actions: [
              Padding(padding: EdgeInsets.only(top: 12, right: 15),
                child: Icon(
                  Icons.search,
                  size: 28,
                ),
              ),
              PopupMenuButton(
                elevation: 10,
                padding: EdgeInsets.symmetric(vertical: 20),
                iconSize: 28,
                itemBuilder: (context) => [
                  PopupMenuItem(
                    value: 1,
                    child: Text(
                      "New Group",
                      style: TextStyle(fontSize: 17,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                  PopupMenuItem(
                    value: 2,
                    child: Text(
                      "New Broadcast",
                      style: TextStyle(fontSize: 17,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                  PopupMenuItem(
                    value: 3,
                    child: Text(
                      "Linked Devices",
                      style: TextStyle(fontSize: 17,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                  PopupMenuItem(
                    value: 4,
                    child: Text(
                      "Starred Messages",
                      style: TextStyle(fontSize: 17,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                  PopupMenuItem(
                    value: 5,
                    child: Text(
                      "Setting",
                      style: TextStyle(fontSize: 17,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              color: Color(0xff00008B),
              child: TabBar(
                isScrollable: true,
                indicatorColor: Colors.white,
                indicatorWeight: 4,
                labelStyle: TextStyle(
                    fontSize: 16, fontWeight: FontWeight.bold
                ),
                tabs: [
                  //Tab 1
                  Container(
                    width: 24,
                    child: Tab(
                      icon: Icon(Icons.camera_alt),
                    ),
                  ),
                  //Tab 2
                  Container(
                    width: 90,
                    child: Tab(
                      child: Row(
                        children: [
                          Text("CHATS"),
                          SizedBox(width: 8,),
                          Container(
                            alignment: Alignment.center,
                            height: 22,
                            width: 22,
                            decoration: BoxDecoration(
                              color: Color(0xffE3A305),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              "10",
                              style: TextStyle(
                                color: Colors.white,
                                //color: Color(0xff00008B),
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //Tab 3
                  Container(width: 85,child: Tab(child: Text("STATUS"),),),
                  Container(width: 85,child: Tab(child: Text("CALLS"),),),
                ],
              ),
            ),
            Flexible(flex: 1,
              child: TabBarView(
                children: [
                  //Tab 1 camera
                  Container(color: Colors.black,),
                  //Tab 2
                  ChatsWidget(),
                  //Tab 3
                  StatusWidget(),
                  //Tab 4
                  Container(color: Colors.black,),
                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}