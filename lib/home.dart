import 'package:flutter/material.dart';

void main() => runApp(const HomePage());

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool is1Sel = false;
  bool is2Sel = false;
  bool is3Sel = false;
  bool is4Sel = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Mc FLutter'),
        ),
        body: Row(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.all(10),
                height: 164,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.account_circle_rounded, size: 48),
                          Column(
                            children: [
                              Text(
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  'Flutter McFlutter'),
                              Text(
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 90, 87, 87),
                                  ),
                                  'Experienced App Developer'),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('123 Main Street'),
                          Text('(415) 555-0198'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.accessibility,
                              color: is1Sel ? Colors.indigo : Colors.black,
                            ),
                            onPressed: () {
                              is1Sel = !is1Sel;
                              is2Sel = false;
                              is3Sel = false;
                              is4Sel = false;

                              setState(() {});

                              ScaffoldMessenger.of(context)
                                ..hideCurrentSnackBar()
                                ..showSnackBar(
                                  SnackBar(
                                      content: Text(
                                          'Unete a un club con otras personas')),
                                );
                            },
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.timer,
                              color: is2Sel ? Colors.indigo : Colors.black,
                            ),
                            onPressed: () {
                              is1Sel = false;
                              is2Sel = !is2Sel;
                              is3Sel = false;
                              is4Sel = false;

                              setState(() {});

                              ScaffoldMessenger.of(context)
                                ..hideCurrentSnackBar()
                                ..showSnackBar(
                                  SnackBar(
                                      content: Text(
                                          'Cuenta regresiva para el evento: 31 días')),
                                );
                            },
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.phone_android,
                              color: is3Sel ? Colors.indigo : Colors.black,
                            ),
                            onPressed: () {
                              is1Sel = false;
                              is2Sel = false;
                              is3Sel = !is3Sel;
                              is4Sel = false;

                              setState(() {});

                              ScaffoldMessenger.of(context)
                                ..hideCurrentSnackBar()
                                ..showSnackBar(
                                  SnackBar(
                                      content:
                                          Text('Llama al número 4155550198')),
                                );
                            },
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.phone_iphone,
                              color: is4Sel ? Colors.indigo : Colors.black,
                            ),
                            onPressed: () {
                              is1Sel = false;
                              is2Sel = false;
                              is3Sel = false;
                              is4Sel = !is4Sel;

                              setState(() {});

                              ScaffoldMessenger.of(context)
                                ..hideCurrentSnackBar()
                                ..showSnackBar(
                                  SnackBar(
                                      content:
                                          Text('Llama al celular 3317865113')),
                                );
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
