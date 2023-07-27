import 'package:flutter/material.dart';

class ImageOnEmpty extends StatelessWidget {
  const ImageOnEmpty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Image(
          image: AssetImage("assets/CheckList.png"),
          width: 227,
          height: 227,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          child: Text("What do you want to do Today?",
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(fontSize: 20)),
        ),
        Text("Tap + to add your tasks",
            style:
                Theme.of(context).textTheme.bodyMedium?.copyWith(fontSize: 16)),
      ],
    );
  }
}
