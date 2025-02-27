import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify_greenroom/ui/home/HomeRoom.dart';
import 'package:spotify_greenroom/utils/constants.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final theme = Theme.of(context);
    // ignore: deprecated_member_use

    final list = [
      HomeRoomItem(),
      HomeRoomItem(),
      HomeRoomItem(),
    ];
    return Scaffold(
      backgroundColor: gradientStartColor,
      extendBody: true,
      appBar: AppBar(
        centerTitle: false,
        title: Image.asset(
          Logo.introLogo["assetPath"],
          height: 90,
          width: 180,
          fit: BoxFit.contain,
        ),
        actions: [
          SizedBox(width: 5),
          IconButton(
            iconSize: 23,
            padding: EdgeInsets.zero,
            icon: Icon(
              Icons.calendar_today_outlined,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          SizedBox(width: 20),
        ],
        elevation: 0,
      ),
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [gradientStartColor, gradientEndColor],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomCenter,
                  stops: [0.2, 0.35])),
          child: ListView.separated(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 200),
            separatorBuilder: (_, __) => SizedBox(height: 10),
            itemCount: list.length,
            itemBuilder: (context, index) {
              return list[index];
            },
          ),
        ),
      ]),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: lightgreen,
        foregroundColor: Colors.black,
        onPressed: () {
          // Respond to button press
        },
        icon: Icon(Icons.add),
        label: Text('New room'),
      ),
      bottomNavigationBar: DecoratedBox(
        decoration: BoxDecoration(
          color: greycolor,
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(1, 5, 1, 5),
          child: SafeArea(
            top: false,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Icon(Icons.home),
                  color: Colors.white,
                  iconSize: 30,
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(CupertinoIcons.search),
                  color: Colors.white.withOpacity(0.5),
                  iconSize: 30,
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(CupertinoIcons.bell),
                  color: Colors.white.withOpacity(0.5),
                  iconSize: 30,
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(CupertinoIcons.person),
                  color: Colors.white.withOpacity(0.5),
                  iconSize: 30,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
