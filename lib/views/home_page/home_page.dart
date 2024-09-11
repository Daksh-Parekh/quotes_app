import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:quotes_app/models/quotes_model.dart';
import 'package:quotes_app/utils/quote_utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 1), () {
      Random rnd = Random();
      int randomIndex = rnd.nextInt(funQuotes.length);
      FunnyQuotesModel rndOutes = funQuotes[randomIndex];

      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("Let's Laugh 😂"),
          content: Text("${rndOutes.quote}"),
        ),
      );
    });
    super.initState();
  }

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
      ),
    );
  }
}
