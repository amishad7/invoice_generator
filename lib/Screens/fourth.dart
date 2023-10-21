import 'package:flutter/material.dart';

class InvoicePage_ extends StatefulWidget {
  const InvoicePage_({super.key});

  @override
  State<InvoicePage_> createState() => _InvoicePage_State();
}

class _InvoicePage_State extends State<InvoicePage_> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Invoice"),
      ),
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.print),
        onPressed: () {},
        label: Text("Print Invoice"),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(20),
          color: Colors.transparent,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 20, right: 30, bottom: 20),
              height: MediaQuery.of(context).size.height / 7.2,
              width: MediaQuery.of(context).size.width / 0,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(20),
                color: Colors.transparent,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 23, right: 23),
                    color: Colors.transparent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Invoice Number :"),
                        Text("INV/334"),
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    padding: EdgeInsets.only(left: 23, right: 23),
                    color: Colors.transparent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Invoice Date :"),
                        Text("6 / 2023"),
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    padding: EdgeInsets.only(left: 23, right: 23),
                    color: Colors.transparent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Invoice Date Due:"),
                        Text("12 / 2023"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 30, bottom: 20),
              height: MediaQuery.of(context).size.height / 8,
              width: MediaQuery.of(context).size.width / 0,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(20),
                color: Colors.transparent,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 23, right: 23),
                    color: Colors.transparent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total Products :"),
                        Text("0"),
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    padding: EdgeInsets.only(left: 23, right: 23),
                    color: Colors.transparent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total Price :"),
                        Text("\$ 0.0"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 21),
              child: Text(
                "Invoice for",
                style: TextStyle(fontSize: 30),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 30, bottom: 20),
              height: MediaQuery.of(context).size.height / 8,
              width: MediaQuery.of(context).size.width / 0,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(20),
                color: Colors.transparent,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 23, right: 23),
                    color: Colors.transparent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "User Name :",
                          style: TextStyle(fontSize: 12),
                        ),
                        Text("Archi"),
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    padding: EdgeInsets.only(left: 23, right: 23),
                    color: Colors.transparent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Email Addresess :",
                          style: TextStyle(fontSize: 12),
                        ),
                        Text("archi@gmail.com"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
