import 'package:flutter/material.dart';
import 'dart:html' as html;
import 'dart:ui' as ui;

String viewID = "your-view-id";

  @override
  Widget build(BuildContext context) {
    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
        viewID,
            (int id) => html.IFrameElement()
          ..width = MediaQuery.of(context).size.width.toString()
          ..height = MediaQuery.of(context).size.height.toString()
          ..src = 'assets/registration.html'
          ..style.border = 'none');

    return SizedBox(
      height: 200,
      child: HtmlElementView(
        viewType: viewID,
      ),
    );
  }