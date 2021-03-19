import 'package:flutter/material.dart';
import 'package:flutter_application/theme.dart';
import 'package:flutter_application/widget/chat_tile.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: blueColor,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: greenColor,
          child: Icon(
            Icons.add,
            size: 28,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: SafeArea(
            child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Image.asset(
                  'assets/images/unnamed.png',
                  height: 100,
                  width: 100,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Doraemon',
                  style: TextStyle(fontSize: 20, color: whiteColor),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'Robot dari abad 22',
                  style: TextStyle(color: lightBlueColor, fontSize: 14),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Friends',
                        style: titleTextStyle,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/moona.jpg',
                        name: 'Moona Hoshinova',
                        text: 'Comedian Boelan',
                        time: 'Now',
                        unread: true,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/iofi.jpg',
                        name: 'Airani Iofi',
                        text: 'Comedian Alien',
                        time: '2:30',
                        unread: false,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Groups',
                        style: titleTextStyle,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/moona.jpg',
                        name: 'Moona Hoshinova Simp Club',
                        text: 'Comedian Boelan',
                        time: '11:11',
                        unread: true,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/iofi.jpg',
                        name: 'Airani Iofi Simp Club',
                        text: 'Comedian Alien',
                        time: '12:30',
                        unread: false,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/iofi.jpg',
                        name: 'Airani Iofi Simp Club',
                        text: 'Comedian Alien',
                        time: '10:30',
                        unread: false,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )));
  }
}
