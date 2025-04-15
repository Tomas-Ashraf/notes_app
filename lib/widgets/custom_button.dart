import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: const EdgeInsets.only(bottom: 20, left: 10, right: 10),
              child: Container(
                width: 700,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: Center(
                  child: Text(
                    'Add',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            );
  }
}