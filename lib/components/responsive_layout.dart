import 'package:flutter/material.dart';
import 'package:flutter_store/themes/colors.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileChild;
  final Widget webChild;

  const ResponsiveLayout(
      {Key? key, required this.mobileChild, required this.webChild})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [primaryText, secondaryText],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Card(
                  elevation: 12,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: LayoutBuilder(builder: (context, constraints) {
                    Widget childWidget = mobileChild;
                    if (constraints.maxWidth > 800) {
                      childWidget = webChild;
                    }
                    return childWidget;
                  }),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
