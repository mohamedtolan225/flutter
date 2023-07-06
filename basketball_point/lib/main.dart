import 'package:flutter/material.dart';

void main() {
  runApp(BasketballApp());
}

class BasketballApp extends StatefulWidget {
  @override
  State<BasketballApp> createState() => _BasketballAppState();
}

class _BasketballAppState extends State<BasketballApp> {
  // BasketballApp({super.key});
  int TeamAPoints = 0;

  int TeamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: const Text("points counter"),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 500,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          "Team A",
                          style: TextStyle(fontSize: 32),
                        ),
                        Text(
                          "$TeamAPoints",
                          style: const TextStyle(fontSize: 140),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(140, 40),
                          ),
                          onPressed: () {
                            setState(() {
                              TeamAPoints++;
                            });
                            print(TeamAPoints);
                          },
                          child: const Text(
                            "Add 1 point",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(140, 40),
                          ),
                          onPressed: () {
                            setState(() {
                              TeamAPoints = TeamAPoints + 2;
                            });
                          },
                          child: const Text(
                            "Add 2 point",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(140, 40),
                          ),
                          onPressed: () {
                            setState(() {
                              TeamAPoints += 3;
                            });
                          },
                          child: const Text(
                            "Add 3 point",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 500,
                    child: const VerticalDivider(
                      color: Colors.grey,
                      thickness: 1,
                      indent: 70,
                      endIndent: 30,
                    ),
                  ),
                  Container(
                    height: 500,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          "Team B",
                          style: TextStyle(fontSize: 32),
                        ),
                        Text(
                          "$TeamBPoints",
                          style: const TextStyle(fontSize: 140),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(140, 40),
                          ),
                          onPressed: () {
                            setState(() {
                              TeamBPoints++;
                            });
                          },
                          child: const Text(
                            "Add 1 point",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(140, 40),
                          ),
                          onPressed: () {
                            setState(() {
                              TeamBPoints = TeamBPoints + 2;
                            });
                          },
                          child: const Text(
                            "Add 2 point",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            minimumSize: const Size(140, 40),
                          ),
                          onPressed: () {
                            setState(() {
                              TeamBPoints += 3;
                            });
                          },
                          child: const Text(
                            "Add 3 point",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  minimumSize: const Size(140, 40),
                ),
                onPressed: () {
                  setState(() {
                    TeamAPoints = 0;
                    TeamBPoints = 0;
                  });
                },
                child: const Text(
                  "Reast",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
            ],
          )),
    );
  }
}
