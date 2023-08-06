import 'package:flutter/material.dart';

class TaskDetails extends StatelessWidget {
  final String title;
  final String description;

  const TaskDetails({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child: Expanded(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: const InputDecoration(
                      isDense: true,
                      border: InputBorder.none,
                    ),
                    maxLines: 3,
                    minLines: 1,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
                  )
                ),
              ],
            ),
            const TextField(
              decoration: InputDecoration(
                isDense: true,
                border: InputBorder.none
              ),
              minLines: 8,
              maxLines: 8,
            )
          ],
        ),
      ),
    );
  }
}
