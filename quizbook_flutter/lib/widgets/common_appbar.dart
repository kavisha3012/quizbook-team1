import 'package:flutter/material.dart';

class CommonAppBarScreen extends StatelessWidget {
  final String title;
  final Color backgroundColor;
  final bool centerTitle;

  CommonAppBarScreen({
    required this.title,
    required this.backgroundColor,
    this.centerTitle = true,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: BackButton(color: Colors.black),
      backgroundColor: backgroundColor,
      title: Text(
        title,
        style: TextStyle(
          color: Colors.black, // Customize the text color if needed
        ),
      ),
      centerTitle: centerTitle,
      actions: [
        PopupMenuButton(
          color: Colors.black,
          itemBuilder: (context) {
            return <PopupMenuEntry<String>>[
              PopupMenuItem(
                child: Text('Item 1'),
                textStyle: TextStyle(color: Colors.tealAccent),
              ),
              PopupMenuItem(
                child: Text('Item 2'),
                textStyle: TextStyle(backgroundColor: Colors.amber),
              ),
            ];
          },
        )
      ],
    );
  }
}
