// ignore_for_file: unnecessary_string_interpolations

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:todo_app/models/todo_model.dart';

class TodoTile extends StatefulWidget {
  TodoTile({required this.todo, this.deleteTodo});

  Todo todo;
  final Function? deleteTodo;
  @override
  State<TodoTile> createState() => _TodoTileState();
}

class _TodoTileState extends State<TodoTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(15),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(4)),
      child: Row(
        children: [
          Checkbox(
              value: widget.todo.isCompleted,
              activeColor: Theme.of(context).colorScheme.primary,
              side: BorderSide(color: Theme.of(context).colorScheme.primary),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)),
              onChanged: (bool? value) {
                print(value);
                setState(() {
                  widget.todo.isCompleted = value!;
                });
              }),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${widget.todo.title}",
                ),
                Text('${widget.todo.description}'),
                const SizedBox(
                  height: 6,
                ),
                Text(
                    "${DateFormat("EEEE, MMM d, yyyy -  hh:mm a").format(widget.todo.todoTime)}",
                    style: Theme.of(context).textTheme.bodySmall),
              ],
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          if (widget.todo.image != null)
            Image.file(
              widget.todo.image!,
              width: 30,
            ),
          IconButton(
              onPressed: () {
                widget.deleteTodo!();
              },
              icon: Icon(
                Icons.delete_sweep,
                color: Theme.of(context).iconTheme.color,
              ))
        ],
      ),
    );
  }
}
