import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'List View',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Map<String, dynamic>> items = [
    {'name': 'Desktop', 'icon': Icons.computer, 'price': 2000.0},
    {'name': 'Smart Phone', 'icon': Icons.smartphone, 'price': 150.0},
    {'name': 'Cable', 'icon': Icons.cable, 'price': 80.0},
    {'name': 'Mouse', 'icon': Icons.mouse, 'price': 600.0},
    {'name': 'Smart Screen', 'icon': Icons.smart_screen, 'price': 300.0},
    {'name': 'Tablet', 'icon': Icons.tablet_mac, 'price': 700.0},
    {'name': 'Camera', 'icon': Icons.camera_alt, 'price': 400.0},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 49, 48, 43),
          title: Text(' List of Items'),
          actions: [
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 38, 54, 68)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: CircleAvatar(
                        radius: 40,
                        backgroundImage:
                            AssetImage('assets/no-profile-picture-icon-2.jpg'),
                      ),
                    ),
                    SizedBox(
                      height: 18.0,
                    ),
                    Center(
                      child: Text(
                        'elias mereke',
                        style: TextStyle(
                          color: Color.fromARGB(255, 240, 234, 234),
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        'babibebshu@gmail.com',
                        style: TextStyle(
                          color: Color.fromARGB(255, 255, 254, 254),
                          fontSize: 13.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                  leading: Icon(Icons.dashboard),
                  title: Text("Dashboard"),
                  iconColor: Colors.black,
                  onTap: () {}),
              ListTile(
                leading: Icon(Icons.data_object),
                title: Text("Item"),
                iconColor: Colors.black,
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
                iconColor: Colors.black,
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Account"),
                iconColor: Colors.black,
                onTap: () {},
              ),
            ],
          ),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return ListTile(
              leading: Icon(
                item['icon'],
                color: Colors.black,
              ),
              title: Text(item['name'], selectionColor: Colors.black),
              subtitle: Text('\$${item['price']}'),
              trailing: IconButton(
                icon: Icon(Icons.edit, color: Colors.black),
                onPressed: () {},
              ),
            );
          },
        ));
  }
}
