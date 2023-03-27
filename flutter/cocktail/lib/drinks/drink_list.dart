import 'package:cocktail/drink.dart';
import 'package:cocktail/drinks/drink_detail.dart';
import 'package:cocktail/services/drink_service.dart';
import 'package:cocktail/services/url_image.dart';
import 'package:flutter/material.dart';

class DrinkList extends StatefulWidget {
  const DrinkList({Key? key}) : super(key: key);

  @override
  _DrinkListState createState() => _DrinkListState();
}

class _DrinkListState extends State<DrinkList> {
  final _controller = TextEditingController();
  final _service = DrinkService();

  late Future<List<Drink>> _futureDrinks;

  @override
  void initState() {
    super.initState();
    _futureDrinks = _service.getDrinks('margarita');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drinks'),
      ),
      body: Column(
        children: [
          TextField(
            controller: _controller,
            decoration: const InputDecoration(
              hintText: 'Search for drinks...',
              contentPadding: EdgeInsets.all(16),
            ),
            onSubmitted: (query) {
              setState(() {
                _futureDrinks = _service.getDrinks(query);
              });
            },
          ),
          Expanded(
            child: FutureBuilder<List<Drink>>(
              future: _futureDrinks,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  final drinks = snapshot.data!;

                  return ListView.builder(
                    itemCount: drinks.length,
                    itemBuilder: (context, index) {
                      final drink = drinks[index];

                      print(drink.name);
                      return ListTile(
                        leading: URLImage(url: Uri.parse(drink.imageUrl)),
                        title: Text(drink.name),
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => DrinkDetail(drink: drink),
                            ),
                          );
                        },
                      );
                    },
                  );
                } else if (snapshot.hasError) {
                  return Center(
                    child: Text(snapshot.error.toString()),
                  );
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
