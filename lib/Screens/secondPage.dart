import 'package:flutter/material.dart';

class Info_Page extends StatefulWidget {
  const Info_Page({super.key});

  @override
  State<Info_Page> createState() => _Info_PageState();
}

class _Info_PageState extends State<Info_Page> {
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> d =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CircleAvatar(
              radius: 180,
              backgroundImage: NetworkImage(
                d['thumbnail'],
              ),
            ),
            SizedBox(height: 42),
            Container(
              //   margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(23),
                color: Colors.transparent,
              ),
              height: MediaQuery.of(context).size.height / 2.6,
              width: MediaQuery.of(context).size.width / 0.6,
              child: Column(
                children: [
                  Text(
                    "${d['title']}",
                    style: TextStyle(
                      letterSpacing: -2,
                      fontSize: 34,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
