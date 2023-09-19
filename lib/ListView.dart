import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class ListViewApp extends StatelessWidget {
  ListViewApp({super.key});

  var fakers = Faker();

  @override
  Widget build(BuildContext context) {
    List<String> listString = [
      "Test 1",
      "test 2",
      "test 3",
      "test 4",
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("ListView Test alalal"),
        ),
        // body: ListView.builder(
        //   itemCount: listString.length,
        //   itemBuilder: (context, index) {
        //     return Text(listString.toString());
        //   },
        // ),
        body: ListView.builder(
          itemCount: 50,
          itemBuilder: (context, index) {
            return ListItemChat(
                imageUrl: "https://picsum.photos/id/$index/200/300",
                titleText: fakers.person.name(),
                subTitle: fakers.lorem.sentence());
          },
        ),
      ),
    );
  }
}

class ListItemChat extends StatelessWidget {
  final String imageUrl;
  final String titleText;
  final String subTitle;

  const ListItemChat(
      {super.key,
      required this.imageUrl,
      required this.titleText,
      required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: () {},
        contentPadding: const EdgeInsets.all(10),
        title: Text(titleText),
        subtitle: Text(subTitle),
        leading: CircleAvatar(
          backgroundImage: NetworkImage(imageUrl),
        ),
        trailing: Container(
          padding: const EdgeInsets.all(10),
          child: const Text(
            "Syncess",
            style: TextStyle(
                fontSize: 15,
                backgroundColor: Colors.green,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
        ));
  }
}

class ViewImageApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("View Imagejsjsj")),
        body: const Center(
          child: SizedBox(
            height: 500,
            width: 400,
            child: Image(
              fit: BoxFit.contain,
              // image: AssetImage("images/messipsg.jpg"),
              image: NetworkImage(
                  "https://img-s-msn-com.akamaized.net/tenant/amp/entityid/AA1bwzEK.img?w=1920&h=1080&m=4&q=79"),
            ),
          ),
        ),
      ),
    );
  }
}

class IncrementApps extends StatefulWidget {
  const IncrementApps({Key? key}) : super(key: key);

  @override
  State<IncrementApps> createState() => _IncrementAppsState();
}

class _IncrementAppsState extends State<IncrementApps> {
  int counter = 10;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Increment Apss"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              counter.toString(),
              style: const TextStyle(fontSize: 30),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: () {
                    if (counter != 1) {
                      setState(() {
                        counter++;
                      });
                    }
                  },
                  child: const Icon(Icons.add),
                ),
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      counter--;
                    });
                  },
                  child: const Icon(Icons.remove),
                )
              ],
            ),
            Container(
                margin: EdgeInsets.all(10),
                height: 230,
                width: 150,
                child: TextFormField()),
          ],
        ),
      ),
    );
  }
}

class ListMappingApp extends StatelessWidget {
  final List<Map<String, dynamic>> listMap = [
    {
      "Name": "Arba",
      "Age": 33,
    },
    {
      "Name": "Mozza",
      "Age": 10,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ListView Mapping"),
        ),
        body: ListView(
          children: listMap.map((data) {
            return Card(
              child: Column(
                children: [
                  //row
                  Row(
                    children: [
                      CircleAvatar(),
                      Column(
                        children: [
                          Text("Name : ${data['Name']}"),
                          Text("Age : ${data['Age']}"),
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        child: Text("Black"),
                      )
                    ],
                  )
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
