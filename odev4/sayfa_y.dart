import 'package:flutter/material.dart';

class SayfaY extends StatefulWidget {
  const SayfaY({Key? key}) : super(key: key);

  @override
  State<SayfaY> createState() => _SayfaYState();
}

class _SayfaYState extends State<SayfaY> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Sayfa Y"),),
      body: WillPopScope(onWillPop: () async {
        Navigator.of(context).popUntil((route) => route.isFirst);
        return false;
      },
        child: Center(),),
    );
  }
}
