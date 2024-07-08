import 'package:flutter/cupertino.dart';


class CurrencyConverterCupertinoPage extends StatefulWidget {
  const CurrencyConverterCupertinoPage({super.key});

  @override
  State <CurrencyConverterCupertinoPage> createState() =>  _CurrencyConverterCupertinoPageState();
}

class  _CurrencyConverterCupertinoPageState extends State <CurrencyConverterCupertinoPage> {

  double result = 0;

  final TextEditingController textEditingController = TextEditingController();

  void convert() {
    setState(() {
      result = (double.parse(textEditingController.text) * 81.0);
    });
  }


  @override
   Widget build(BuildContext context) {
    print('rebuilt');

    

    //cupertino tab scaffold allows to create a tab at the bottom
    //cupertino page scaffold is used to create a page or apppbar at  the top
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGrey3,
      navigationBar: const CupertinoNavigationBar(
        middle:  Text(
          'Currency Converter',
          style: TextStyle(
            color: CupertinoColors.white,
            fontSize: 20,
            fontWeight: FontWeight.normal,
          ),
        ),
        
        backgroundColor: CupertinoColors.systemGrey3,
        // elevation: 0,//nothing as elevation in cupertino
      ),
      child: Center(
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

              CupertinoTextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: CupertinoColors.black,
                ),
                decoration: BoxDecoration(
                  color:CupertinoColors.black,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(5),
                ), 
                placeholder: 'Enter amount in USD',
                  placeholderStyle: const TextStyle(
                    color: CupertinoColors.black,
                  ),

                  
                  prefix: const Icon(CupertinoIcons.money_dollar,),
                  keyboardType:const TextInputType.numberWithOptions(
                    decimal: true),
                 
                ),
                
              
              //sized box
              const SizedBox(height: 10),
              //button

              CupertinoButton(
                // onPressed: () {
                //   convert();
                //   // build(context);
                // },
                onPressed: convert,
                color:CupertinoColors.black,
               
                child: const Text('Convert'),
              ),
            ],
          ),
        ),
      ),
    );
  }

}