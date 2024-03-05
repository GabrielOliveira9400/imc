import 'package:flutter/cupertino.dart';
import 'package:imc/ui/ios/pages/home.page.dart';

class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: 'IMC',
      debugShowCheckedModeBanner: false,
      home:  HomePage(),
    );
  }
}