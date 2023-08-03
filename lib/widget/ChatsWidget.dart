import 'package:flutter/material.dart';

class ChatsWidget extends StatelessWidget{
  const ChatsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 5,
        ),
        child: Column(
          children: [
            for (int i=1; i<11; i++)
          InkWell(
            onTap: (){},
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 12),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset(
                      "images/p$i.jpg",
                      height: 65,
                      width: 65,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Programmer",
                      style: TextStyle(fontSize: 18,
                          fontWeight: FontWeight.bold,
                      ),
                      ),
                      SizedBox(height: 8,),
                      Text("Hi programmer, how are you?",
                      style: TextStyle(fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                      ),
                      ),
                    ],
                  ),
                  ),
                  Spacer(),
                  Column(
                    children: [

                      Text("12:15",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff00008B),
                        fontWeight: FontWeight.w500,
                      ),
                      ),
                      SizedBox(height: 6,),
                      Container(
                        alignment: Alignment.center,
                        width: 28,
                        height: 28,
                        decoration: BoxDecoration(
                          color: Color(0xffE3A305),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Text(
                          "2",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],

              ),
            ),
          )
        ],),
      ),

    );
  }
}