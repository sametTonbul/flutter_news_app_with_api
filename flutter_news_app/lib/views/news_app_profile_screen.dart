import 'package:flutter/material.dart';

class NewsAppProfileRegisterScreen extends StatefulWidget {
  const NewsAppProfileRegisterScreen({super.key});

  @override
  State<NewsAppProfileRegisterScreen> createState() =>
      _NewsAppProfileRegisterScreenState();
}

class _NewsAppProfileRegisterScreenState
    extends State<NewsAppProfileRegisterScreen> {
  var tfUserEmailController = TextEditingController();
  var tfUserPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 86, 9, 164),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/register_screen_image.JPG'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: tfUserEmailController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                hintText: 'Email',
                hintStyle: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                prefixIcon: Icon(Icons.mail),
                prefixStyle: TextStyle(
                  fontSize: 18,
                  color: Colors.black12,
                ),
                iconColor: Colors.blueAccent,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextField(
              controller: tfUserPasswordController,
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              obscuringCharacter: '*',
              decoration: const InputDecoration(
                hintText: 'Password',
                hintStyle: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                prefixIcon: Icon(Icons.key),
                prefixStyle: TextStyle(
                  fontSize: 18,
                  color: Colors.black12,
                ),
                iconColor: Colors.blueAccent,
              ),
            ),
            const SizedBox(
              height: 200,
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Register',
                style: TextStyle(
                    color: Color.fromARGB(213, 159, 144, 6),
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
