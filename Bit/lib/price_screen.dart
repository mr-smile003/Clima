import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './coin_data.dart';
import 'dart:io' show Platform;
class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {

  String selectedvalue = 'USD';

  DropdownButton<String> androiddropdownbotton() {
    List<DropdownMenuItem<String>> dropdownlist = [];
    for (String mycurr in currenciesList) {
      var newitem = DropdownMenuItem(child: Text(mycurr), value: mycurr);
      dropdownlist.add(newitem);
    }
    return DropdownButton<String>(
      value: selectedvalue,
      items: dropdownlist,
      onChanged: (value) {
        setState(() {
          selectedvalue = value;
        });
      },
    );
  }
CupertinoPicker iospiker(){
    List<Text> pike = [];
    for (String cp in currenciesList) {
      pike.add(Text(cp));
    }
    return CupertinoPicker(
                  backgroundColor: Colors.lightBlue,
                  itemExtent: 32.0,
                  onSelectedItemChanged: (selectedindex) {
                    print(selectedindex);
                  },
                  children: pike,
                  );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('🤑 Coin Ticker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
            child: Card(
              color: Colors.lightBlueAccent,
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
                child: Text(
                  '1 BTC = ? USD',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Container(
              height: 150.0,
              alignment: Alignment.center,
              padding: EdgeInsets.only(bottom: 30.0),
              color: Colors.lightBlue,
              child: Platform.isIOS ?iospiker() : androiddropdownbotton(),
          ),
          ],
      ),
    );
  }
}
