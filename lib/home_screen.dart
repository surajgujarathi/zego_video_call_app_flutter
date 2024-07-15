import 'package:flutter/material.dart';
import 'package:video_call/call_invite.dart';

import '../utils.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      padding: const EdgeInsets.all(15),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            Center(
              child: SizedBox(
                  height: 200,
                  width: 200,
                  child: Image.asset("assets/logo.png")),
            ),
            const SizedBox(
              height: 10,
            ),
            RichText(
              text: const TextSpan(
                text: "Face ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 30),
                children: <TextSpan>[
                  TextSpan(
                      text: 'Time',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue)),
                ],
              ),
            ),
            const Text("Real Way to Connect"),
            const SizedBox(
              height: 40,
            ),
            TextFormField(
              controller: controller,
              decoration: const InputDecoration(
                hintText: "Enter Call ID To Join",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            GestureDetector(
              onTap: () {
                if (controller.text.isEmpty) {
                  showToast("Please Enter Call ID");
                } else {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => CallPage(callID: controller.text)));
                }
              },
              child: Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xff8b1958), Color(0xffc63166)]),
                ),
                alignment: Alignment.center,
                child: const Text(
                  "Join a Call",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
