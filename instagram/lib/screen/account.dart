import 'package:flutter/material.dart';
import 'package:instagram/color.dart';

import 'package:instagram/constant.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: getAppBar(),
      body: getBody(size),
    );
  }

  Widget getAppBar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(55),
      child: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(
          left: 10,
          right: 10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Feather.lock,
                  size: 18,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  username,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )
              ],
            ),
            Row(
              children: [
                IconButton(
                  splashRadius: 15,
                  onPressed: () {},
                  icon: Icon(AntDesign.plus),
                ),
                IconButton(
                  splashRadius: 15,
                  onPressed: () {},
                  icon: Icon(FontAwesome.bars),
                )
              ],
            )
          ],
        ),
      )),
    );
  }

  Widget getBody(size) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 10, left: 10),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: (size.width - 20) * 0.3,
                    child: Stack(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(width: 1, color: bgGrey),
                              image: DecorationImage(
                                  image: NetworkImage(profile),
                                  fit: BoxFit.cover)),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
