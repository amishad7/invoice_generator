import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          "My Cart",
          style: TextStyle(letterSpacing: -1),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: const EdgeInsets.only(left: 30, right: 30, bottom: 20),
                padding: const EdgeInsets.only(left: 20),
                height: MediaQuery.of(context).size.height / 8.6,
                width: MediaQuery.of(context).size.width / 0,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.transparent,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 55,
                      width: 180,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Product name",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            "Product price",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 35,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.add,
                          ),
                          Text("1"),
                          Icon(
                            Icons.remove,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 30, right: 30, bottom: 20),
                padding: const EdgeInsets.only(left: 20),
                height: MediaQuery.of(context).size.height / 8.6,
                width: MediaQuery.of(context).size.width / 0,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.transparent,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 55,
                      width: 180,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Product name",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            "Product price",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 35,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.add,
                          ),
                          Text("1"),
                          Icon(
                            Icons.remove,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 30, right: 30, bottom: 20),
                padding: const EdgeInsets.only(left: 20),
                height: MediaQuery.of(context).size.height / 8.6,
                width: MediaQuery.of(context).size.width / 0,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.transparent,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 55,
                      width: 180,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Product name",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            "Product price",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 35,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.add,
                          ),
                          Text("1"),
                          Icon(
                            Icons.remove,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 30, right: 30, bottom: 20),
                padding: const EdgeInsets.only(left: 20),
                height: MediaQuery.of(context).size.height / 8.6,
                width: MediaQuery.of(context).size.width / 0,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.transparent,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 55,
                      width: 180,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Product name",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            "Product price",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 35,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.add,
                          ),
                          Text("1"),
                          Icon(
                            Icons.remove,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
