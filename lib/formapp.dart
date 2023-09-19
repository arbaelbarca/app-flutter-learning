import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:test_flutter_app/DetailScreen.dart';

class FormApp extends StatelessWidget {
  const FormApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: FormPage());
  }
}

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  String textNama = "";
  bool lightOn = false;
  bool? isAgree = false;
  String? language = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Form Page test"),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: TextField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Input Nama",
                      labelText: "Nama"),
                  onChanged: (String value) {
                    setState(() {
                      textNama = value;
                    });
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(left: 10, right: 10),
                child: TextField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Input Username",
                      labelText: "Username"),
                  onChanged: (String value) {
                    setState(() {
                      textNama = value;
                    });
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        showToast(textNama);
                      },
                      child: Text("Sent"),
                    )),
              ),
              Container(
                margin: EdgeInsets.only(top: 5, left: 20, right: 20),
                child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return DetailScreenActivity("Haloo gesss");
                          },
                        ));
                      },
                      child: Text("Navigator"),
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Switch(
                  value: lightOn,
                  onChanged: (bool value) {
                    setState(() {
                      lightOn = value;
                    });
                    showToast(lightOn ? 'Light On' : 'Light Off');
                  },
                ),
              ),
              Column(
                children: [
                  Container(
                    child: ListTile(
                      leading: Radio<String>(
                        value: "Dart",
                        groupValue: language,
                        onChanged: (String? value) {
                          setState(() {
                            language = value!;
                            showToast("Select $language");
                          });
                        },
                      ),
                      title: Text("Dart"),
                    ),
                  ),
                  Container(
                    child: ListTile(
                      leading: Radio<String>(
                        value: "Kotlin",
                        groupValue: language,
                        onChanged: (String? value) {
                          setState(() {
                            language = value!;
                            showToast("Select $language");
                          });
                        },
                      ),
                      title: Text("Kotlin"),
                    ),
                  ),
                  Container(
                    child: ListTile(
                      leading: Radio<String>(
                        value: "Swift",
                        groupValue: language,
                        onChanged: (String? value) {
                          setState(() {
                            language = value!;
                            showToast("Select $language");
                          });
                        },
                      ),
                      title: Text("Swift"),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  ListTile(
                    leading: Checkbox(
                      value: isAgree,
                      onChanged: (bool? value) {
                        isAgree = value!;
                        // if (isAgree = true) {
                        //   showToast("Aggrees");
                        // } else
                        //   showToast("Disaggree");
                        showToast("shoow $isAgree");
                      },
                    ),
                    title: Text("Agress / disagreee"),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.all(15),
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                            "https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg"),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                            'https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                            'https://media-cdn.tripadvisor.com/media/photo-w/13/f0/22/f6/photo3jpg.jpg'),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                            "https://media-cdn.tripadvisor.com/media/photo-s/0d/7c/59/70/farmhouse-lembang.jpg"),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showToast(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER);
  }
}
