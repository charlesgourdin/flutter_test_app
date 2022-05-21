import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: const Text('Flutter Demo'),
        ),
        body: Center(
          child: Container(
              width: double.infinity,
              height: double.infinity,
              color: currentIndex == 0 ? Colors.amber : Colors.indigo,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          onPrimary: Colors.white,
                        ),
                        onPressed: () {
                          setState(() {
                            counter -= 1;
                          });
                        },
                        child: const Text('Remove'),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                          onPrimary: Colors.white,
                        ),
                        onPressed: () {
                          setState(() {
                            counter += 1;
                          });
                        },
                        child: const Text('Add'),
                      ),
                    ],
                  ),
                  Text(
                    counter.toString(),
                    style: TextStyle(
                      color: currentIndex == 0 ? Colors.indigo : Colors.amber,
                      fontSize: 30,
                    ),
                  ),
                ],
              )),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                label: 'Profile',
                icon: Icon(
                  Icons.account_circle,
                )),
            BottomNavigationBarItem(
                label: 'Cart',
                icon: Icon(
                  Icons.add_shopping_cart_sharp,
                ))
          ],
          currentIndex: currentIndex,
          onTap: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
