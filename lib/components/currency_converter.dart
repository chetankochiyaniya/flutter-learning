import 'package:flutter/material.dart';

class CurrencyConverter extends StatelessWidget {
  const CurrencyConverter({super.key});

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.black,
        width: 2.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(6),
      ),
    );
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Covert",
              style: TextStyle(fontSize: 45, color: Colors.white),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: TextField(
                style: TextStyle(fontSize: 20, color: Colors.black),
                decoration: InputDecoration(
                  hintText: "Enter Value",
                  hintStyle: TextStyle(fontSize: 20, color: Colors.black),
                  suffixIcon: Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Icon(
                      Icons.monetization_on,
                      size: 40,
                    ),
                  ),
                  suffixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                  contentPadding: EdgeInsets.fromLTRB(16, 16, 16, 16),
                ),
                keyboardType: TextInputType.numberWithOptions(decimal: true),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: null,
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.amber),
                    minimumSize:
                        MaterialStatePropertyAll(Size(double.infinity, 50))),
                child: Container(
                  margin: const EdgeInsets.all(2),
                  child: const Text("Convert",
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ),
              ),
            ),
          ],
        )));
  }
}
