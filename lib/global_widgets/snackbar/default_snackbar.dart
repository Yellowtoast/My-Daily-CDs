import 'package:daily_cd_player/core/theme/colors.dart';
import 'package:flutter/material.dart';

class MySnackBar extends StatelessWidget {
  const MySnackBar(String content, {super.key}) : _content = content;

  final String _content;

  @override
  Widget build(BuildContext context) {
    return SnackBar(
        content: Text(
          _content,
          textAlign: TextAlign.center,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        margin: const EdgeInsets.symmetric(horizontal: 20),
        padding: const EdgeInsets.symmetric(vertical: 15),
        duration: const Duration(milliseconds: 1500),
        backgroundColor: const Color.fromARGB(227, 41, 41, 41));
  }
}
