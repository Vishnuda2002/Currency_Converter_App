import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CurrencyApp extends StatefulWidget {
  const CurrencyApp({super.key});

  @override
  State<CurrencyApp> createState() => _CurrencyCoppyPageNew();

}

class _CurrencyCoppyPageNew extends State<CurrencyApp> {
  final TextEditingController textEditingController = TextEditingController();
  int result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("Currency Converter App",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.all(40),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                color: Colors.white12,
              ),
              child: Text("INR "+ result.toString(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            TextField(
              controller: textEditingController,
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                LengthLimitingTextInputFormatter(5),
              ],
              decoration: InputDecoration(
                hintText: "Enter the USD amount...",
                hintStyle: TextStyle(
                  color: Colors.white38,
                ),
                prefixIcon: Icon(Icons.monetization_on_rounded),
                prefixIconColor: Colors.white38,
                filled: true,
                fillColor: Colors.white10,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 3.0, color: Colors.white),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.all(50),
              child: ElevatedButton(onPressed: () {
                setState(() {
                  result = int.parse(textEditingController.text) * 81;

                });
              },
                style: TextButton.styleFrom(
                  elevation: 15,
                  backgroundColor: Colors.white24,
                  foregroundColor: Colors.white,
                ),
                child: Text("Convert ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}