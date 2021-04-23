import 'package:flutter/material.dart';

class MyCustomerInput extends StatefulWidget {
  String label;
  String inputHint;
  MyCustomerInput({required this.label, required this.inputHint});
  @override
  _MyCustomerInputState createState() => _MyCustomerInputState();
}

class _MyCustomerInputState extends State<MyCustomerInput> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 50.0, bottom: 8),
            child: Text(
              widget.label,
              style: TextStyle(fontSize: 15, color: Color(0x665ac18e)),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(40, 0, 40, 15),
          child: TextFormField(
            obscureText: widget.label == 'Password' ? true : false,
            onEditingComplete: () {},
            style: TextStyle(
              fontSize: 19,
              color: Color(0x665ac18e),
              fontWeight: FontWeight.bold,
            ),
            decoration: InputDecoration(
              hintText: widget.inputHint,
              hintStyle: TextStyle(
                fontSize: 19,
                color: Colors.grey[350],
                fontWeight: FontWeight.w600,
              ),
              contentPadding:
                  EdgeInsets.symmetric(vertical: 27, horizontal: 25),
              focusColor: Color(0xcc5ac18e),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(27),
                  borderSide: BorderSide(
                    color: Color(0xcc5ac18e),
                  )),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(27),
                  borderSide: BorderSide(
                    color: Colors.grey,
                  )),
            ),
          ),
        )
      ],
    );
  }
}
