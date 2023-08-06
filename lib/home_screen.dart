import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo App'),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 8, bottom: 8),
        child: Row(
          children: [
            const SizedBox(width: 8),
            Expanded(
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16)
                      ),
                      hintText: '+ Add task to Inbox. Press Enter to save.',
                    ),
                  ),
                  const SizedBox(height: 4),
                  Expanded(
                    child: ListView(
                      children: const <Widget>[
                        ListItem(
                          title: 'Hello',
                        ),
                        ListItem(title: 'Item 2'),
                        ListItem(title: 'item 3')
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Container(
                alignment: Alignment.topLeft,
                // margin: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    // border: Border.all(
                    //   // width: 2,
                    // ),
                  ),
                child: Expanded(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Hello abcd',
                              textAlign: TextAlign.left,
                              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                backgroundColor: Colors.red
                              )
                            ),
                          ),
                        ],
                      ),
                      const Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.')
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(width: 8),
          ],
        ),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String title;
  const ListItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 4, top: 4),
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: () {
          debugPrint('Card tapped.');
        },
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Text(title),
        ),
      ),
    );
  }
}
