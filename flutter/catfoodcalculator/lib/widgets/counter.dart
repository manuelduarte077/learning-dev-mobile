import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  final String title;
  final TextStyle? style;
  final int baseCounter;
  final String? suffix;
  final Function(int) onCounterUpdated;

  const Counter({
    super.key,
    required this.title,
    this.style,
    this.suffix,
    required this.baseCounter,
    required this.onCounterUpdated,
  });

  @override
  State<StatefulWidget> createState() {
    return _CounterState();
  }
}

class _CounterState extends State<Counter> {
  int counter = 0;

  @override
  void initState() {
    counter = widget.baseCounter;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        widget.title,
        style: widget.style ?? Theme.of(context).textTheme.bodyMedium,
      ),
      Row(mainAxisSize: MainAxisSize.min, children: [
        InkWell(
          borderRadius: BorderRadius.circular(8),
          child: Ink(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Theme.of(context).primaryColorLight,
            ),
            child: const Icon(Icons.remove),
          ),
          onTap: () {
            setState(() {
              counter--;
            });
            widget.onCounterUpdated(counter);
          },
        ),
        SizedBox(
          width: 120,
          child: Center(
            child: Text(
              widget.suffix?.isNotEmpty == true
                  ? '$counter ${widget.suffix}'
                  : '$counter',
            ),
          ),
        ),
        InkWell(
          borderRadius: BorderRadius.circular(8),
          child: Ink(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Theme.of(context).primaryColorLight,
            ),
            child: const Icon(Icons.add),
          ),
          onTap: () {
            setState(() {
              counter++;
            });
            widget.onCounterUpdated(counter);
          },
        ),
      ]),
    ]);
  }
}
