import 'package:flutter/material.dart';

class StatisticsPage extends StatelessWidget {
  const StatisticsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Statistics"),
        centerTitle: true,
        toolbarHeight: 70,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        elevation: 1,
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
      ),

      // Bottom Navigation
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
        child: SizedBox(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // home tile
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      // color: Colors.green[300],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            // this is already the home screen so just pop drawer
                            Navigator.pop(context);

                            // navigate to users page
                            Navigator.pushNamed(context, '/home_page');
                          },
                          icon: const Icon(Icons.home_filled),
                          color: Theme.of(context).colorScheme.secondary,
                          tooltip: 'Home',
                          iconSize: 30,
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    'Home',
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 40),

              // add item tile
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      // color: Colors.green[300],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            // this is already the home screen so just pop drawer
                            Navigator.pop(context);

                            // navigate to users page
                            Navigator.pushNamed(context, '/add_item_page');
                          },
                          icon: const Icon(Icons.library_add),
                          color: Theme.of(context).colorScheme.secondary,
                          tooltip: 'Add Item',
                          iconSize: 30,
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    'Add Item',
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 40),

              // list tile
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      // color: Colors.green[300],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            // this is already the home screen so just pop drawer
                            Navigator.pop(context);

                            // navigate to users page
                            Navigator.pushNamed(context, '/list_page');
                          },
                          icon: const Icon(Icons.list_alt),
                          color: Theme.of(context).colorScheme.secondary,
                          tooltip: 'Plants List',
                          iconSize: 32,
                        ),
                      ],
                    ),
                  ),
                  const Text('List', style: TextStyle(color: Colors.black54)),
                ],
              ),
              const SizedBox(width: 40),

              // statistics tile
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      // color: Colors.green[300],
                      // color: Colors.amber,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            // this is already the home screen so just pop drawer
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.auto_graph_outlined),
                          color: Theme.of(context).colorScheme.inversePrimary,
                          tooltip: 'Statistics',
                          iconSize: 30,
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    'Statistics',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
