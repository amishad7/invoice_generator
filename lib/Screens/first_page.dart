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
  int navigationIndex = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                Navigator.of(context).pushNamed('three');
              });
            },
            icon: const Icon(CupertinoIcons.cart),
          ),
        ],
        title: const Text("Home"),
        shadowColor: Colors.grey,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            SizedBox(height: 80),
            CircleAvatar(
              radius: 100,
              backgroundImage: NetworkImage(
                  'https://cdn3.vectorstock.com/i/1000x1000/72/82/female-avatar-profile-icon-round-woman-face-vector-18307282.jpg'),
            ),
            SizedBox(height: 20),
            Text(
              "Archi",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            Divider(),
            SizedBox(height: 8),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.pushNamed(context, 'fourth');
                    });
                  },
                  child: Container(
                    alignment: Alignment.centerLeft,
                    color: Colors.transparent,
                    padding: EdgeInsets.only(left: 10),
                    width: 250,
                    height: 45,
                    child: Text(
                      " Invoice",
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ),
                Icon(Icons.arrow_forward_ios_outlined)
              ],
            ),
          ],
        ),
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
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      padding: const EdgeInsets.only(
                                          top: 12, left: 10),
                                      height:
                                          MediaQuery.of(context).size.height /
                                              12,
                                      decoration: BoxDecoration(
                                        color: Colors.white60,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Text(
                                        "${e['title']}",
                                        style: const TextStyle(
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
        onTap: (value) {
          setState(() {
            navigationIndex = value;

            (navigationIndex == 2)
                ? Navigator.of(context).pushNamed('three')
                : (navigationIndex == 1)
                    ? Navigator.of(context).pushNamed('fourth')
                    : Navigator.of(context).pushNamed('/');
          });
        },
        currentIndex: navigationIndex,
        // backgroundColor: Colors.black87,
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(
              Icons.home,
              // color: Colors.white,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Invoice',
            icon: Icon(
              CupertinoIcons.doc_chart,
              // color: Colors.white,
            ),
          ),
          BottomNavigationBarItem(
            label: 'My Cart',
            icon: Icon(
              CupertinoIcons.cart,
              // color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
