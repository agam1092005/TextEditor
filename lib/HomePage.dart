// ignore_for_file: use_build_context_synchronously, file_names

import 'package:flutter/material.dart';

import 'EditingPage.dart';

class HomePage extends StatelessWidget {
  const HomePage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Select Your Canvas",
              style: TextStyle(
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const EditingPage(
                      selectedBg: "assets/black.png",
                    ),
                  ),
                );
              },
              child: Container(
                height: 150,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      16,
                    ),
                  ),
                ),
                child: const Center(
                  child: Text(
                    "Black Background",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const EditingPage(
                      selectedBg: "assets/white.png",
                    ),
                  ),
                );
              },
              child: Container(
                height: 150,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      16,
                    ),
                  ),
                ),
                child: const Center(
                  child: Text(
                    "White Background",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
