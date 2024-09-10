import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:quotes_app/utils/quote_utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (val, result) async {
        if (val) {
          return;
        }
        bool canPop = await showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) => AlertDialog(
            title: Text("Alert Dialog Box"),
            content: Text("Are you sure to Exit !! "),
            actions: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, true);
                },
                child: Text("YES"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, false);
                },
                child: Text("NO"),
              ),
            ],
          ),
        );
        if (canPop) {
          exit(0);
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Quote App"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: allQoutes
                  .map(
                    (e) => Card(
                      color: Colors.white,
                      child: ListTile(
                        title: Text(e.quote),
                        subtitle: Text(
                          "~${e.author}",
                          style: const TextStyle(color: Colors.grey),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) => SimpleDialog(
                        title: Text("Simple Dialog"),
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              lorem(words: 30),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  child: Text("Simple"),
                ),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (context) => AlertDialog(
                        title: Text("Confirmational Dialog"),
                        content: Text(
                          lorem(
                            words: 10,
                            paragraphs: 1,
                          ),
                        ),
                        actions: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text("YES"),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text("NO"),
                          ),
                        ],
                      ),
                    );
                  },
                  child: Text("Confirmation"),
                ),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    showGeneralDialog(
                      context: context,
                      pageBuilder: (context, a1, a2) => Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Spacer(),
                          FlutterLogo(
                            size: 200,
                          ),
                          Spacer(),
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              height: 80,
                              color: Colors.blue,
                              alignment: Alignment.center,
                              child: Text(
                                "Exit",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 26,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  child: Text("FullScreen"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
