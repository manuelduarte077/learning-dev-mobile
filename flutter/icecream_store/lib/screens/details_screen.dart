import 'package:flutter/material.dart';
import 'package:icecream_store/data/models.dart';

int _counter = 1;
String total = '';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key, required this.helado}) : super(key: key);

  final IceCream helado;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  void initState() {
    _counter = 1;
    total = (double.parse(widget.helado.price.split('\$')[1]) * _counter)
        .toStringAsFixed(2);
    super.initState();
  }

  void removeIceCream() {
    setState(() {
      if (_counter > 1) _counter--;

      total = (double.parse(widget.helado.price.split('\$')[1]) * _counter)
          .toStringAsFixed(2);
    });
  }

  void addIceCream() {
    setState(() {
      _counter++;

      total = (double.parse(widget.helado.price.split('\$')[1]) * _counter)
          .toStringAsFixed(2);
    });
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          ImageArea(
            helado: widget.helado,
          ),
          Stack(
            children: [
              Container(
                height: size.height * 0.45,
                width: size.width,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${widget.helado.name} Flavour',
                        style: textTheme.titleMedium?.copyWith(
                          color: const Color(0xFF7f628d),
                        ),
                      ),
                      const Text(
                        'Home made ice cream',
                        style: TextStyle(
                          color: Color(0xFFfebe94),
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Text(
                        'Lorem ipsum dolor sit amet, consecterturr sit sit amet, amet adipte porLorem ipsum',
                        style: textTheme.titleSmall?.copyWith(
                          color: const Color(0xFF7f628d),
                        ),
                      ),
                      const Divider(),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 16,
                            ),
                            Text(
                              '  4.8 / Reviews 520',
                              style: TextStyle(
                                color: Color(0xFF7f628d),
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Divider(),
                      Text(
                        'Quantity',
                        style: textTheme.titleSmall?.copyWith(
                          color: const Color(0xFF7f628d),
                        ),
                      ),
                      const SizedBox(height: 12),
                      QuantityCounter(
                        decrement: removeIceCream,
                        increment: addIceCream,
                      ),
                      const SizedBox(height: 12),
                      const Divider(),
                    ],
                  ),
                ),
              ),
              TotalDisplay(
                total: total,
              ),
              const OrderButton(),
            ],
          ),
        ],
      ),
    );
  }
}

class OrderButton extends StatelessWidget {
  const OrderButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 0,
      child: Container(
        height: 70,
        width: MediaQuery.of(context).size.width * 0.45,
        decoration: const BoxDecoration(
          color: Color(0xFFfeaf78),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50),
          ),
        ),
        child: const Center(
          child: Text(
            'Order now',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}

class TotalDisplay extends StatefulWidget {
  const TotalDisplay({
    Key? key,
    required this.total,
  }) : super(key: key);

  final String total;

  @override
  State<TotalDisplay> createState() => _TotalDisplayState();
}

class _TotalDisplayState extends State<TotalDisplay> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 20,
      left: 50,
      child: Text(
        'Total: \$${widget.total}',
        style: const TextStyle(
          color: Color(0xff806590),
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }
}

class QuantityCounter extends StatefulWidget {
  const QuantityCounter({
    Key? key,
    required this.decrement,
    required this.increment,
  }) : super(key: key);

  final Function decrement;
  final Function increment;

  @override
  State<QuantityCounter> createState() => _QuantityCounterState();
}

class _QuantityCounterState extends State<QuantityCounter> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: const BoxDecoration(
            color: Color(0xFFece5eb),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: IconButton(
            onPressed: () => widget.decrement(),
            icon: const Icon(Icons.remove),
          ),
        ),
        const SizedBox(width: 15),
        Container(
          height: 50,
          width: 50,
          decoration: const BoxDecoration(
            color: Color(0xFFece5eb),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: Center(
            child: Text(
              _counter.toString(),
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
          ),
        ),
        const SizedBox(width: 15),
        Container(
          height: 50,
          width: 50,
          decoration: const BoxDecoration(
            color: Color(0xFF6b4a7c),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: IconButton(
            onPressed: () => widget.increment(),
            icon: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

class ImageArea extends StatelessWidget {
  const ImageArea({Key? key, required this.helado}) : super(key: key);

  final IceCream helado;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.55,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(helado.image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            height: 60,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
              color: Colors.white,
            ),
          ),
        ),
        Positioned(
          bottom: 35,
          right: 60,
          child: Container(
            height: 55,
            width: 55,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(18),
              ),
              color: Color(0XFFfebe94),
            ),
            child: IconButton(
              color: Colors.white,
              icon: const Icon(Icons.arrow_back_ios_rounded),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
        ),
      ],
    );
  }
}
