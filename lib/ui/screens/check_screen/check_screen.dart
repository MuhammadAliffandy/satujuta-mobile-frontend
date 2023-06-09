import 'package:flutter/material.dart';
import 'package:satujuta_app_mobile/ui/screens/list_check_screen/list_check_screen.dart';
import 'package:satujuta_app_mobile/ui/ui.dart';

class CheckPage extends StatelessWidget {
  const CheckPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SplashScreen(),
                    )),
                child: const Text("Main app")),
            ElevatedButton(
                onPressed: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ListCheckScreen(),
                    )),
                child: const Text("List Page"))
          ],
        ),
      ),
    );
  }
}
