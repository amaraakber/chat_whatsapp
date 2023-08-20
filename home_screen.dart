import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = "home_screen";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            // ignore: prefer_const_constructors
            title: Text("WhatsApp"),
            bottom: const TabBar(tabs: [
              Tab(
                child: Icon(Icons.camera_alt),
              ),
              Tab(
                child: Text("Chats"),
              ),
              Tab(
                child: Text("Status"),
              ),
              Tab(
                child: Text("Calls"),
              ),
            ]),
            // ignore: prefer_const_constructors
            actions: [
              Icon(Icons.search),
              SizedBox(width: 10),
              PopupMenuButton(
                icon: const Icon(Icons.more_vert_outlined),
                itemBuilder: (context) => const [
                  PopupMenuItem(value: "1", child: Text("New group")),
                  PopupMenuItem(value: "2", child: Text("Settings")),
                  PopupMenuItem(value: "3", child: Text("Log out")),
                ],
              ),
              SizedBox(width: 10),
            ],
          ),
          body: TabBarView(
            children: [
              Text("Camera"),
              ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return const ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://images.pexels.com/photos/3685271/pexels-photo-3685271.jpeg?auto=compress&cs=tinysrgb&w=600"),
                      ),
                      title: Text("Shabbir"),
                      subtitle: Text("Wher are you?"),
                      trailing: Text("8:00 p.m"),
                    );
                  }),
              ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.green, width: 3),
                        ),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://images.pexels.com/photos/3685271/pexels-photo-3685271.jpeg?auto=compress&cs=tinysrgb&w=600"),
                        ),
                      ),
                      title: Text("Shabbir"),
                      subtitle: Text("5 minutes ago"),
                    );
                  }),
              ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://images.pexels.com/photos/3685271/pexels-photo-3685271.jpeg?auto=compress&cs=tinysrgb&w=600"),
                      ),
                      title: Text("Shabbir"),
                      subtitle: Text(index / 2 == 0
                          ? "You missed call"
                          : "You have missed video call"),
                      trailing: Icon(
                        index / 2 == 0 ? Icons.phone : Icons.video_call,
                      ),
                    );
                  }),
            ],
          ),
        ));
  }
}
