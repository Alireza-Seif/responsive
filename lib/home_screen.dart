import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 600) {
          return ListView.builder(
            itemCount: 6,
            itemBuilder: (context, index) {
              return Container(
                height: 100,
                width: 100,
                margin: EdgeInsets.all(10),
                color: Colors.pink,
                child: Center(
                  child: ListTile(title: Text('Item $index')),
                ),
              );
            },
          );
        } else {
          return DesktopContent();
        }
      },
    )

        // Wrap(
        //   children: [
        //     Container(height: 100, width: 100, color: Colors.red),
        //     Container(height: 100, width: 100, color: Colors.green),
        //     Container(height: 100, width: 100, color: Colors.amberAccent),
        //     Container(height: 100, width: 100, color: Colors.grey),
        //     Container(height: 100, width: 100, color: Colors.purpleAccent),
        //     Container(height: 100, width: 100, color: Colors.blue),
        //     Container(height: 100, width: 100, color: Colors.yellow),
        //     Container(height: 100, width: 100, color: Colors.pink),
        //     Container(height: 100, width: 100, color: Colors.black),
        //     Container(height: 100, width: 100, color: Colors.brown),
        //   ],
        // ),
        // Row(
        //   children: [
        //     // real estate for responsive flutter
        //     // Expanded(flex: 2, child: Container(height: 300, color: Colors.red)),
        //     // Expanded(flex: 1, child: Container(height: 300, color: Colors.blue)),
        //   ],
        // ),
        );
  }
}

class DesktopContent extends StatelessWidget {
  const DesktopContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: GridView.count(
            crossAxisCount: 3,
            children: List.generate(
              6,
              (index) {
                return Card(
                  color: Colors.green,
                  child: Center(
                    child: Text('Item $index'),
                  ),
                );
              },
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.blue,
            child: Column(
              children: [
                for (var i = 1; i < 11; i++) Text(i.toString()),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
