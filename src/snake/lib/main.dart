import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MainApp());
}

Widget gameGrid() {
  return GridView.builder(
    padding: const EdgeInsets.all(8),
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 10,
    ), 
    itemCount: 100,
    itemBuilder: (BuildContext context, int index) {
      return Padding(
        padding: const EdgeInsets.all(0.5),
        child: Container(
          color: Colors.blue,
        )
      );
    },
  );
}

Widget gameControls() {
  return Container(
    child: Expanded( 
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Icon(
                  Icons.arrow_upward,
                  color: Colors.black
                ),
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
              SizedBox(width: 50),
              ElevatedButton(
                onPressed: () {},
                child: const Icon(
                  Icons.arrow_forward,
                  color: Colors.black
                ),
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Icon(
                  Icons.arrow_downward,
                  color: Colors.black
                ),
              ),
            ],
          ),
        ]
      )
    )
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.blue[300],
          appBar: AppBar(
            backgroundColor: Colors.blue[300],
            leading: const Center(
                child: Text(
                  'Score: 0',
                  style: TextStyle(
                    backgroundColor: Colors.white,
                    color: Colors.black,
                  ) 
                ),
            ),
            title: const Text(
              'Algo Snake',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold
              ),
            ),
            centerTitle: true,
            actions: const [
                Text(
                  'Time: 0',
                  style: TextStyle(
                    backgroundColor: Colors.white,
                    color: Colors.black,
                  )
                ),
            ],
          ),
          body: Column(
            children: [
              gameGrid(),
              Container(
                child: Expanded( 
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      gameControls(),
                    ]
                  )
                )
              )
            ],
          ),
        ),
      )
    );
  }
}
