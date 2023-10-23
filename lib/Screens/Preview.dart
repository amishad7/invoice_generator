import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';

import 'package:pdf/widgets.dart' as pw;

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
              pw.Text("Invoice"),
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
