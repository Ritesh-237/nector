import 'package:flutter/material.dart';

class TrackOrder extends StatefulWidget {
  static const routeName = '/TrackOrder';

  const TrackOrder({super.key});

  @override
  State<TrackOrder> createState() => _TrackOrderState();
}

class _TrackOrderState extends State<TrackOrder> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AlertDialog(),
    );
  }
}
