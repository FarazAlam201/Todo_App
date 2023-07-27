import 'package:flutter/material.dart';
import 'package:todo_app/screens/login_screen.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
              decoration:
                  BoxDecoration(color: Theme.of(context).colorScheme.primary),
              child: SizedBox(
                width: double.infinity,
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Theme.of(context).colorScheme.background,
                      radius: 30,
                      backgroundImage:
                          const AssetImage('assets/ProfileImg.png'),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Faraz Alam",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(fontSize: 24),
                        ),
                        Text(
                          "farazsid2001@gmail.com",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(fontSize: 14),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
          ListTile(
            onTap: () {},
            title: Text(
              "Profile",
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(fontSize: 18),
            ),
            subtitle: Text(
              "View your profile details",
              style:
                  Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 14),
            ),
            leading: Icon(
              Icons.person,
              color: Theme.of(context).iconTheme.color,
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Login()));
            },
            leading: Icon(Icons.logout_rounded,
                color: Theme.of(context).iconTheme.color),
            title: Text(
              "Log out",
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
