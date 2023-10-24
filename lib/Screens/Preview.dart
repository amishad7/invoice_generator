import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

class PDF_View extends StatefulWidget {
  const PDF_View({super.key});

  @override
  State<PDF_View> createState() => _PDF_ViewState();
}

class _PDF_ViewState extends State<PDF_View> {
  final pdf = pw.Document();
  @override
  generator() {
    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (context) {
          return pw.Column(
            children: [
              pw.Container(
                alignment: pw.Alignment.center,
                //  padding: const pw.EdgeInsets.only(top: 20, left: 30),
                color: PdfColors.white,
                height: 70,
                width: 500,
                child: pw.Text(
                  "INVOICE",
                  style: pw.TextStyle(
                    fontSize: 30,
                    fontWeight: pw.FontWeight.bold,
                    color: PdfColors.black,
                  ),
                ),
              ),
              pw.Container(
                height: 500,
                width: 500,
                margin: const pw.EdgeInsets.only(),
                decoration: pw.BoxDecoration(),
                child: pw.Column(
                  mainAxisAlignment: pw.MainAxisAlignment.start,
                  children: [
                    pw.Divider(),
                    pw.Row(
                      mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                      children: [
                        pw.Text(
                          "Invoice to: ",
                          style: pw.TextStyle(
                            wordSpacing: 1,
                            fontWeight: pw.FontWeight.normal,
                            fontSize: 15,
                          ),
                        ),
                        pw.Text(
                          "TOTAL Due:",
                          style: pw.TextStyle(
                            wordSpacing: 1,
                            fontWeight: pw.FontWeight.normal,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    pw.SizedBox(height: 30),
                    pw.Row(
                      mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                      children: [
                        pw.Text(
                          "Archi Radadiya",
                          style: pw.TextStyle(
                            wordSpacing: 1,
                            fontWeight: pw.FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        pw.Text(
                          "\$ 0.0",
                          style: pw.TextStyle(
                            wordSpacing: 1,
                            fontWeight: pw.FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                    pw.SizedBox(height: 17),
                    pw.Row(
                      children: [
                        pw.Expanded(
                          flex: 3,
                          child: pw.Container(
                            padding: pw.EdgeInsets.only(
                                top: 20, left: 10, bottom: 10),
                            color: PdfColors.black,
                            child: pw.Text(
                              "Products ",
                              style: pw.TextStyle(
                                wordSpacing: 1,
                                color: PdfColors.white,
                                fontWeight: pw.FontWeight.normal,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                        pw.Expanded(
                          flex: 1,
                          child: pw.Container(
                            color: PdfColors.black,
                            padding: pw.EdgeInsets.only(
                                top: 20, left: 10, bottom: 10),
                            child: pw.Text(
                              "Qty ",
                              style: pw.TextStyle(
                                wordSpacing: 1,
                                color: PdfColors.white,
                                fontWeight: pw.FontWeight.normal,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                        pw.Expanded(
                          flex: 1,
                          child: pw.Container(
                            color: PdfColors.black,
                            padding: pw.EdgeInsets.only(
                                top: 20, left: 10, bottom: 10),
                            child: pw.Text(
                              "Price ",
                              style: pw.TextStyle(
                                wordSpacing: 1,
                                color: PdfColors.white,
                                fontWeight: pw.FontWeight.normal,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                        pw.Expanded(
                          flex: 1,
                          child: pw.Container(
                            alignment: pw.Alignment.bottomRight,
                            color: PdfColors.black,
                            padding: pw.EdgeInsets.only(
                                top: 20, left: 10, bottom: 10),
                            child: pw.Text(
                              "Total ",
                              style: pw.TextStyle(
                                wordSpacing: 1,
                                color: PdfColors.white,
                                fontWeight: pw.FontWeight.normal,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    pw.SizedBox(height: 11),
                    pw.Divider(),
                    pw.Row(
                      children: [
                        pw.Expanded(
                          flex: 3,
                          child: pw.Container(
                            color: PdfColors.white,
                            child: pw.Text(
                              "No Products ",
                              style: pw.TextStyle(
                                wordSpacing: 1,
                                color: PdfColors.black,
                                fontWeight: pw.FontWeight.normal,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                        pw.Expanded(
                          flex: 1,
                          child: pw.Container(
                            color: PdfColors.white,
                            child: pw.Text(
                              "0 ",
                              style: pw.TextStyle(
                                wordSpacing: 1,
                                color: PdfColors.black,
                                fontWeight: pw.FontWeight.normal,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                        pw.Expanded(
                          flex: 1,
                          child: pw.Container(
                            color: PdfColors.white,
                            child: pw.Text(
                              "0.0 ",
                              style: pw.TextStyle(
                                wordSpacing: 1,
                                color: PdfColors.black,
                                fontWeight: pw.FontWeight.normal,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                        pw.Expanded(
                          flex: 1,
                          child: pw.Container(
                            alignment: pw.Alignment.bottomRight,
                            color: PdfColors.white,
                            child: pw.Text(
                              "0.0 ",
                              style: pw.TextStyle(
                                wordSpacing: 1,
                                color: PdfColors.black,
                                fontWeight: pw.FontWeight.normal,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    pw.Divider(),
                    pw.SizedBox(height: 100),
                    pw.Divider(),
                    pw.Row(
                      mainAxisAlignment: pw.MainAxisAlignment.end,
                      children: [
                        pw.Container(
                          child: pw.Text("Total: 0.0"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  void initState() {
    // TODO: implement initState
    super.initState();
    generator();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: PdfPreview(
        build: (PdfPageFormat format) => pdf.save(),
      ),
    );
  }
}
