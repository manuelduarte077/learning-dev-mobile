import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pixelpay_sdk/models/billing.dart' as pixelpay;
import 'package:pixelpay_sdk/models/card.dart' as pixelpay;
import 'package:pixelpay_sdk/models/item.dart' as pixelpay;
import 'package:pixelpay_sdk/models/order.dart' as pixelpay;
import 'package:pixelpay_sdk/models/settings.dart' as pixelpay;
import 'package:pixelpay_sdk/requests/card_tokenization.dart';
import 'package:pixelpay_sdk/requests/sale_transaction.dart' as pixelpay;
import 'package:pixelpay_sdk/services/tokenization.dart';
import 'package:pixelpay_sdk/services/transaction.dart' as pixelpay;

import 'environment.dart';

final _rnd = Random();

const _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';

String getRandomString(int length) => String.fromCharCodes(
      Iterable.generate(
        length,
        (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length)),
      ),
    );

pixelpay.Billing getBillingModel() {
  final billing = pixelpay.Billing();
  billing.address = "Ave Circunvalacion";
  billing.country = "HN";
  billing.state = "HN-CR";
  billing.city = "San Pedro Sula";
  billing.phone = "95852921";

  return billing;
}

pixelpay.Card getCardModel(String? number) {
  final card = pixelpay.Card();
  card.number = number ?? "4111 1111 1111 1111";
  card.cvv2 = "009";
  card.expire_month = 12;
  card.expire_year = 2023;
  card.cardholder = "IVAN SUAZO";


  return card;
}

pixelpay.Order getOrderModel(double amount) {
  final item = pixelpay.Item();
  item.code = "00001";
  item.title = "Example product";
  item.price = amount;
  item.qty = 1;

  final order = pixelpay.Order();
  order.id = getRandomString(8);
  order.amount = amount;
  order.currency = "HNL";
  order.customer_email = "carlos@pixel.hn";
  order.customer_name = "Carlos Agaton";

  order.addItem(item);
  order.addExtra("test", "lorem ipsum");

  return order;
}

void main() async {
  await Environment.initEnvironment();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: const Center(
          child: MyStatefulWidget(),
        ),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String _message = '---';
  String _response = 'Empty';
  String _status_code = '---';
  String _card_number = '4111 1111 1111 1111';

  Future<void> sendTransaction() async {
    if (!mounted) return;

    setState(() {
      _message = 'Start transaction ...';
      _status_code = '---';
      _response = 'Empty';
    });

    try {
      final settings = pixelpay.Settings();
      // settings.setupSandbox();
      settings.setupLanguage('es');

      final sale = pixelpay.SaleTransaction();
      sale.setCard(getCardModel(_card_number));
      sale.setBilling(getBillingModel());
      sale.setOrder(getOrderModel(1.00));

      if (_card_number != '4111 1111 1111 1111') {
        sale.withAuthenticationRequest();
      }

      final authTransaction = Tokenization(settings);
      final cardTokenization = CardTokenization();

      cardTokenization.setCard(getCardModel("4111111111111111"));
      cardTokenization.setBilling(getBillingModel());

      setState(() {
        _message = 'Sending transaction ...';
      });

      final response = await authTransaction.vaultCard(cardTokenization);
      // final response = await service.doSale(sale);

      if (response != null) {
        setState(() {
          _message = response.message ?? 'Empty message';
          _status_code = response.getStatus().toString();
          _response = response.toJson();
        });
      }
    } on PlatformException {
      setState(() {
        _message = 'Failed to get request data.';
      });
    } on Exception {
      setState(() {
        _message = 'Exception on code.';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
      backgroundColor: Colors.black,
      textStyle: const TextStyle(fontSize: 20),
      minimumSize: const Size.fromHeight(50),
    );

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            DropdownButton(
                value: _card_number,
                isExpanded: true,
                icon: const Icon(Icons.arrow_downward),
                elevation: 16,
                items: <String>[
                  '4111 1111 1111 1111',
                  '4000 0000 0000 1000',
                  '4000 0000 0000 1018',
                  '4000 0000 0000 1026',
                  '4000 0000 0000 1034',
                  '4000 0000 0000 1042',
                  '4000 0000 0000 1059',
                  '4000 0000 0000 1067',
                  '4000 0000 0000 1075',
                  '4000 0000 0000 1091',
                  '4000 0000 0000 1109',
                  '4000 0000 0000 1117',
                  '4000 0000 0000 1125',
                  '4000 0000 0000 1083',
                  '4000 0100 0000 0001'
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _card_number = newValue!;
                  });
                }),
            Text(_status_code),
            Text(_message),
            const SizedBox(height: 30),
            ElevatedButton(
              style: style,
              onPressed: sendTransaction,
              child: const Text('Send'),
            ),
            const SizedBox(height: 30),
            Text(_response, textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
