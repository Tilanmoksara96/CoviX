import 'package:covidapp/customerinput.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var scrWidth = MediaQuery.of(context).size.width;
    var scrHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 40.0, top: 40),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                            fontSize: 35,
                            color: Color(0x665ac18e),
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 40, top: 5),
                      child: Text(
                        'Sign Up with',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 38),
                    child: Row(
                      children: [
                        Neu_button(
                          char: 'G',
                        ),
                        SizedBox(
                          width: 25,
                        ),
                        Neu_button(char: 'f')
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  MyCustomerInput(
                      label: 'National ID', inputHint: '*********V'),
                  SizedBox(
                    height: 30,
                  ),
                  MyCustomerInput(
                    label: 'Name',
                    inputHint: 'Tilan Hettiarachchi',
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  MyCustomerInput(label: 'Age', inputHint: 'Your age'),
                  SizedBox(
                    height: 30,
                  ),
                  MyCustomerInput(
                      label: 'Address',
                      inputHint: 'No:123, Udammita, Veyangoda'),
                  SizedBox(
                    height: 30,
                  ),
                  MyCustomerInput(
                      label: 'Profession', inputHint: 'Engineer/Doctor/...etc'),
                  SizedBox(
                    height: 30,
                  ),
                  MyCustomerInput(
                      label: 'Email', inputHint: 'Example@gmail.com'),
                  SizedBox(
                    height: 30,
                  ),
                  MyCustomerInput(label: 'Password', inputHint: 'asa1a5151a'),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    width: scrWidth * 0.85,
                    height: 75,
                    decoration: BoxDecoration(
                      color: Color(0x995ac18e),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        'Create an account',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white70,
                        ),
                      ),
                    ),
                  ),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                      text: 'Already have an account ?',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xcc5ac18e).withOpacity(0.45),
                      ),
                    ),
                    TextSpan(
                      text: 'Sign In',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.lightGreenAccent,
                      ),
                    ),
                  ]))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Neu_button extends StatelessWidget {
  Neu_button({required this.char});
  String char;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 58,
      height: 58,
      decoration: BoxDecoration(
          color: Color(0x995ac18e),
          borderRadius: BorderRadius.circular(13),
          boxShadow: [
            BoxShadow(
              offset: Offset(12, 11),
              blurRadius: 26,
              color: Color(0xffaaaaaa).withOpacity(0.1),
            )
          ]),
      child: Center(
        child: Text(
          char,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Color(0xcc5ac18e),
          ),
        ),
      ),
    );
  }
}
