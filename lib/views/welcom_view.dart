import 'package:flutter/material.dart';
import 'package:news_app/views/HomeView.dart';

class WelcomView extends StatelessWidget {
  const WelcomView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.asset("assets/welcom.jpg"),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Welcom to App news",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
            const SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const Homeview();
                    },
                  ),
                );
              },
              child: Container(
                height: 70,
                width: 150,
                color: Colors.blue,
                child: const Center(
                  child: Text(
                    "Skip",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
