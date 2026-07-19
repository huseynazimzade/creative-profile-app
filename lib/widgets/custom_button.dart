import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final bool hasIcon;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.hasIcon = false,
  });

  @override
  Widget build(BuildContext context) {
    // Responsiv dizayn: Düymə ekranın genişliyinin 90%-ni tutur
    double width = MediaQuery.of(context).size.width * 0.9;

    return SizedBox(
      width: width,
      height: 55,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF6C63FF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            if (hasIcon) ...[
              const SizedBox(width: 8),
              const Icon(Icons.arrow_forward, color: Colors.white, size: 20),
            ]
          ],
        ),
      ),
    );
  }
}
