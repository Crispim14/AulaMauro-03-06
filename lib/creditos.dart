import 'package:flutter/material.dart';

class Creditos extends StatelessWidget {
  const Creditos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Créditos')),
        body: const Center(
            child: Text(
                'Setings icon by Ravindra Kalkani https://iconscout.com/contributors/ravindra-kalkani')));
  }
}
