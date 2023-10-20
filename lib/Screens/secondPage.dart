import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:invoice_generator/Global/Globals.dart';

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

    List img = d['images'];

    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          setState(() {
            Global.cartProducts.add(d);
          });
        },
        label: Text("\$ ${d['price'].toString()}"),
        icon: Icon(
          CupertinoIcons.cart,
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ...img.map((e) {
                        return Container(
                          margin: EdgeInsets.only(right: 20, left: 30),
                          width: MediaQuery.of(context).size.width / 1.1,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(23),
                            color: Colors.transparent,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                e,
                              ),
                            ),
                          ),
                        );
                      }),
                    ],
                  ),
                ),
              ),
            ),
            //   const SizedBox(height: 42),
            Expanded(
              child: Container(
                //   margin: EdgeInsets.only(top: 10),
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(23),
                  color: Colors.transparent,
                ),
                height: MediaQuery.of(context).size.height / 2.6,
                width: MediaQuery.of(context).size.width / 0.6,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "${d['title']}",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        letterSpacing: -2,
                        fontSize: 34,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Dis-count",
                          style: TextStyle(
                            letterSpacing: -2,
                            fontSize: 20,
                            color: Colors.deepPurpleAccent,
                          ),
                        ),
                        Text(
                          "${d['discountPercentage']}",
                          style: const TextStyle(
                            letterSpacing: -2,
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Brand ",
                          style: TextStyle(
                            letterSpacing: -2,
                            fontSize: 20,
                            color: Colors.deepPurpleAccent,
                          ),
                        ),
                        Text(
                          "${d['brand']}",
                          style: const TextStyle(
                            letterSpacing: -2,
                            fontSize: 24,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "rating ",
                          style: TextStyle(
                            letterSpacing: -2,
                            fontSize: 20,
                            color: Colors.deepPurpleAccent,
                          ),
                        ),
                        Text(
                          "⭐️ ${d['rating']}",
                          style: const TextStyle(
                            letterSpacing: -2,
                            fontSize: 24,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "description ",
                              style: TextStyle(
                                letterSpacing: -2,
                                fontSize: 24,
                                color: Colors.deepPurpleAccent,
                              ),
                            ),
                            SizedBox(
                              width: 300,
                              child: Text(
                                "${d['description']}",
                                style: const TextStyle(
                                  letterSpacing: -1,
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
