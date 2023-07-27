import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  final String btnName;
  final VoidCallback? callback;
  final double? fontsize;
  final double? width;
  final double? height;
  final Color? color;
  final Color? fontColor;
  const MyButton({
    super.key,
    required this.btnName,
    this.callback,
    this.height = 48,
    this.width = double.infinity,
    this.fontsize = 16,
    this.color = const Color(0xff8687E7),
    this.fontColor = const Color(0xffFFFFFF),
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: color,
        ),
        child: Center(
          child: Text(
            btnName,
            style: GoogleFonts.lato(
              fontSize: fontsize,
              color: fontColor,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
            ),
          ),
        ),
      ),
    );
  }
}
