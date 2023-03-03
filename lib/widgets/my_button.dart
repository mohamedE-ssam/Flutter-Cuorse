import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    Key? key,
    required this.title,
    required this.onpressed,
    this.color = Colors.purple,
    this.textcolor = Colors.white,
    this.width = 300,
    this.height = 50,
  }) : super(key: key);
  final String title;
  final Function() onpressed;
  final Color color;
  final Color textcolor;
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Center(
        child: OutlinedButton(
          onPressed: onpressed,
          style: OutlinedButton.styleFrom(
              foregroundColor: Colors.purpleAccent,
              backgroundColor: color,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              elevation: 2,
              fixedSize: Size(width, height),
              side: const BorderSide(
                color: Colors.purple,
              )),
          child: Text(
            title,
            style: TextStyle(color: textcolor),
          ),
        ),
      ),
    );
  }
}
