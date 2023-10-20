import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:invoice_generator/Global/Globals.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.person),
          ),
        ],
        title: const Text("Home"),
        shadowColor: Colors.grey,
      ),
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              ...Global.productdata.map(
                (e) {
                  List data = e['data'];
                  return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ...data.map(
                          (e) {
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  Navigator.of(context)
                                      .pushNamed('two', arguments: e);
                                });
                              },
                              child: Container(
                                alignment: Alignment.bottomCenter,
                                height: MediaQuery.of(context).size.height / 3,
                                width: MediaQuery.of(context).size.width / 1.6,
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 30),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  image: DecorationImage(
                                    image: NetworkImage(e['thumbnail']),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      padding:
                                          EdgeInsets.only(top: 12, left: 10),
                                      height:
                                          MediaQuery.of(context).size.height /
                                              12,
                                      decoration: BoxDecoration(
                                        color: Colors.white60,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Text(
                                        "${e['title']}",
                                        style: TextStyle(
                                          letterSpacing: -2,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black,
                                          fontSize: 23,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Colors.black87,
        items: [
          const BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(
              Icons.home,
              // color: Colors.white,
            ),
          ),
          const BottomNavigationBarItem(
            label: 'Invoice',
            icon: Icon(
              CupertinoIcons.doc_chart,
              // color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
