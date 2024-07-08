

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
  //we have a class that extens the stateful widget

  const CurrencyConverterMaterialPage({super.key}); //constructor
  @override 
  // State<CurrencyConverterMaterialPage> createState()=>_CurrencyConverterMaterialPageState();//we have a create state fxn that creates the statebut hen ass we cannot insantiate state class over here so we need to create our own state that extends State and then we can put it over here(inheritance concept)

  State<CurrencyConverterMaterialPage> createState() {
    return _CurrencyConverterMaterialPageState();
  }
}

class _CurrencyConverterMaterialPageState
    extends State<CurrencyConverterMaterialPage> {
      
  //we have to put the generic type here as well

  // @override
  // void initState() {
  //   print('rebuilt');
  //   super.initState();
  // }

  double result = 0;

  final TextEditingController textEditingController = TextEditingController();

  void convert() {
    setState(() {
      result = (double.parse(textEditingController.text) * 81.0);
    });
  }

  @override
  void dispose(){
    textEditingController.dispose();
    super.dispose();
  }

  @override //we need to override the build function
  Widget build(BuildContext context) {
    print('rebuilt');

    const border = OutlineInputBorder(
      //color in flutter is of type 0xAARRGGBB
      borderSide: BorderSide(
        color: Colors.black,
        width: 2.0,
        style: BorderStyle.solid,
        strokeAlign: BorderSide.strokeAlignInside,
      ),
      borderRadius: BorderRadius.all(Radius.circular(5)),
    );

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text(
          'Currency Converter',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.normal,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        elevation: 0,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //
              Text(
                'INR ${result!=0?result.toStringAsFixed(2):result.toStringAsFixed(0)}',
                //'INR ${result.toString()}',
                style: const TextStyle(
                    fontSize: 55,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(255, 255, 255, 1)),
              ),
              //padding
              //contaner

              TextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: const InputDecoration(
                  hintText: 'Enter amount in USD',
                  hintStyle: TextStyle(
                    color: Colors.black,
                  ),
                  prefixIcon: Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
              ),
              //sized box
              const SizedBox(height: 10),
              //button

              TextButton(
                // onPressed: () {
                //   convert();
                //   // build(context);
                // },
                onPressed: convert,
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text('Convert'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CurrencyConverterMaterialPagee extends StatelessWidget {
  const CurrencyConverterMaterialPagee({super.key});

  @override
  Widget build(BuildContext context) {
    print('rebuilt');
    double result = 0;

    final TextEditingController textEditingController = TextEditingController();
    const border = OutlineInputBorder(
      //color in flutter is of type 0xAARRGGBB
      borderSide: BorderSide(
        color: Colors.black,
        width: 2.0,
        style: BorderStyle.solid,
        strokeAlign: BorderSide.strokeAlignInside,
      ),
      borderRadius: BorderRadius.all(Radius.circular(5)),
    );

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text(
          'Currency Converter',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.normal,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //
            Text(
              result.toString(),
              style: const TextStyle(
                  fontSize: 55,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(255, 255, 255, 1)),
            ),
            //padding
            //contaner

            Padding(
              padding: EdgeInsets.all(0.0),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: const InputDecoration(
                  hintText: 'Enter amount in USD',
                  hintStyle: TextStyle(
                    color: Colors.black,
                  ),
                  prefixIcon: Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
              ),
            ),

            //button

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextButton(
                onPressed: () {
                  // print(textEditingController.text);
                  // print(double.parse(textEditingController.text) * 81.0);

                  result = (double.parse(textEditingController.text) * 81.0);
                  build(context);

                  // if (kDebugMode) {
                  //   print('button clicked');
                  // }
                  // or debugPrint('button clicked');
                },
                // style: ButtonStyle(
                //   backgroundColor: const WidgetStatePropertyAll(Colors.black),
                //   foregroundColor: const WidgetStatePropertyAll(Colors.white),
                //   minimumSize: const WidgetStatePropertyAll(Size(double.infinity  , 50)),
                //   shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                //     borderRadius: BorderRadius.circular(10.0),
                //   ),
                //   ),alternative to the below style
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text('Convert'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
