import 'package:flutter/material.dart';
import 'package:swe_445_proj/components/custome_app_bar.dart';

class Checkout extends StatelessWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [GradientAppBar(' Khobar E-Shopping'), Body()],
        ));
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.8,
          child: ListView(
            padding: const EdgeInsets.all(8),
            children: <Widget>[
              ListTile(
                leading: Image.asset(
                  'assets/prod1.png',
                  width: 60,
                  height: 60,
                ),
                title: Text('Ipgone 12  256GB'),
                subtitle: Text('3,599 SAR'),
                trailing: Text('x1'),
              ),
              ListTile(
                leading: Image.asset(
                  'assets/prod2.png',
                  width: 60,
                  height: 60,
                ),
                title: Text('Sony XM-13200 Headphones'),
                subtitle: Text('1,399 SAR'),
                trailing: Text('x1'),
              ),
              SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Subtotal',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                      )),
                  Text('4,998 SAR',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                      )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Shipping',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                      )),
                  Text('200 SAR',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                      )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                      )),
                  Text('5,198 SAR',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                      )),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                  height: 50,
                  width: double.infinity,
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: ElevatedButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Check out with     ',
                            style: TextStyle(color: Colors.black)),
                        Image.asset(
                          'assets/paypal-logo.png',
                          width: 90,
                          height: 90,
                        ),
                      ],
                    ),
                    // ignore: prefer_const_constructors
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromRGBO(239, 200, 106, 1))),
                    onPressed: () {},
                  )),
            ],
          ),
        )
      ]),
    ));
  }
}
