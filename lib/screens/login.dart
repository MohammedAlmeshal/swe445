import 'package:flutter/material.dart';

import 'package:swe_445_proj/components/custome_app_bar.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [GradientAppBar(' Khobar E-Shopping'), Body()],
        ));
  }
}

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.fromLTRB(10, 120, 10, 60),
                child: const Text(
                  'Sign in to Khobar E-Shopping',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 22),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(),
                  labelText: 'Username, Email, or Phone Number ',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  const Text('Forgot your password?'),
                  TextButton(
                    child: const Text(
                      'Click here',
                      style: TextStyle(color: Colors.purple),
                    ),
                    onPressed: () {
                      //signup screen
                    },
                  )
                ],
              ),
            ),
            Container(
                height: 50,
                width: double.infinity,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Continue'),
                  // ignore: prefer_const_constructors
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromRGBO(114, 77, 255, 1))),
                  onPressed: () {
                    Navigator.pushNamed(context, '/otp');
                  },
                )),
          ],
        ));
  }
}
