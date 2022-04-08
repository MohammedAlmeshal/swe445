import 'package:flutter/material.dart';
import 'package:swe_445_proj/components/custome_app_bar.dart';

class Otp extends StatelessWidget {
  const Otp({Key? key}) : super(key: key);

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
  TextEditingController otpController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.fromLTRB(10, 120, 10, 30),
                child: const Text(
                  'Sign in to Khobar E-Shopping',
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 22),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: passwordController,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: otpController,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.keyboard),
                  border: OutlineInputBorder(),
                  labelText: 'Enter Code',
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 50,
                    width: 30,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: IconButton(
                        onPressed: () => Navigator.pushNamed(context, '/'),
                        icon: Icon(
                          Icons.arrow_back,
                        ),
                        color: Colors.grey.shade700)),
                SizedBox(width: 20),
                Container(
                    height: 50,
                    width: 320,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                      child: const Text('Continue'),
                      // ignore: prefer_const_constructors
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color.fromRGBO(114, 77, 255, 1))),
                      onPressed: () {
                        Navigator.pushNamed(context, '/checkout');
                      },
                    )),
              ],
            ),
          ],
        ));
  }
}
