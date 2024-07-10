import 'package:flutter/material.dart';

class Reveal extends StatefulWidget {
  final String name;
  const Reveal({
    super.key,
    required this.name,
  });

  @override
  State<Reveal> createState() => _RevealState();
}

class _RevealState extends State<Reveal> {
  int count = 0;
  bool done = false;
  String function(String ipStr) {
    String str = ipStr.substring(0, count);
    return str;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 100,
      width: 180,
      decoration: BoxDecoration(
        color: done ? Colors.black.withOpacity(0.8) : Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: done
            ? [
                BoxShadow(
                  blurRadius: 30,
                  spreadRadius: 25,
                  color: Colors.deepPurpleAccent.withOpacity(0.7),
                  offset: const Offset(1, 3),
                ),
              ]
            : null,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            function(widget.name),
            style: TextStyle(
              color: done ? Colors.white : Colors.black.withOpacity(0.8),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          done
              ? const Text("")
              : TextButton(
                  onPressed: () {
                    setState(() {
                      if (count < widget.name.length) {
                        count++;
                      } else {
                        done = true;
                      }
                    });
                  },
                  style: ButtonStyle(
                    backgroundColor: done
                        ? const MaterialStatePropertyAll(Colors.white)
                        : MaterialStatePropertyAll(
                            Colors.black.withOpacity(0.5),
                          ),
                  ),
                  child: Icon(
                    Icons.navigate_next_outlined,
                    color: done ? Colors.white : Colors.black.withOpacity(0.5),
                  ),
                ),
        ],
      ),
    );
  }
}
