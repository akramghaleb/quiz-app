import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  const Questions({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Question',
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Answer 1',
                style: TextStyle(color: Colors.white),
              )),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Answer 2',
                style: TextStyle(color: Colors.white),
              )),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Answer 3',
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
    );
  }
}
