import 'package:flutter/material.dart';

class ClipWidget extends StatelessWidget {
  final bool isConfirmed;
  const ClipWidget({Key? key, required this.isConfirmed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Chip(
          labelStyle: const TextStyle(fontSize: 8),
          label: Text(
            isConfirmed ? "Confirmed" : "Unconfirmed",
            style: const TextStyle(color: Colors.black),
          ),
          avatar: const Icon(
            Icons.error_outline,
            color: Colors.black,
            size: 15,
          ),
          visualDensity: const VisualDensity(horizontal: 0.0, vertical: -4)),
    );
  }
}
