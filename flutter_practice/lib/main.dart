import "package:flutter/material.dart";

void main() {
  runApp(const FirstPage());
}

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int num = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'FirstApp',
            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
          ),
          backgroundColor: Colors.black,
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(num.toString(),
                  style: const TextStyle(
                    fontSize: 30,
                  )),
              const SizedBox(
                height: 30,
              ),
              OutlinedButton(
                style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(const Color.fromARGB(255, 0, 0, 0)),
                  overlayColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.hovered)) {
                        return Color.fromARGB(255, 47, 0, 255).withOpacity(0.14);
                      }
                      if (states.contains(MaterialState.focused) ||
                          states.contains(MaterialState.pressed)) {
                        return Color.fromARGB(255, 14, 255, 183).withOpacity(0.12);
                      }
                      return null; // Defer to the widget's default.
                    },
                  ),
                ),
                onPressed: () {
                  setState(() {
                    num++;
                  });
                },
                child: const Text(
                  'Add',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
