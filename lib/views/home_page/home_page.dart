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
  // @override
  // void initState() {
  //   Future.delayed(Duration(seconds: 1), () {
  //     Random rnd = Random();
  //     int randomIndex = rnd.nextInt(funQuotes.length);
  //     FunnyQuotesModel rndOutes = funQuotes[randomIndex];

  //     showDialog(
  //       context: context,
  //       builder: (context) => AlertDialog(
  //         title: Text("Let's Laugh 😂"),
  //         content: Text("${rndOutes.quote}"),
  //       ),
  //     );
  //   });
  //   super.initState();
  // }

  bool isCheck = false;
  final colors = Colors.primaries;

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
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  isCheck = !isCheck;
                });
              },
              icon: isCheck
                  ? Icon(Icons.grid_view_rounded)
                  : Icon(Icons.list_rounded),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: isCheck
              ? Scrollbar(
                  thickness: 8,
                  radius: Radius.circular(10),
                  interactive: true,
                  thumbVisibility: true,
                  // trackVisibility: true,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 3 / 4,
                    ),
                    itemCount: allQoutes.length,
                    itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(
                          'detail_page',
                          arguments: allQoutes[index],
                        );
                      },
                      child: Card(
                        color: colors[index % 18],
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Expanded(
                                child: Text(
                                  allQoutes[index].quote,
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                  maxLines: 5,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Text(
                                textAlign: TextAlign.end,
                                "~ ${allQoutes[index].author}",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              : ListView.separated(
                  separatorBuilder: (context, index) => Divider(
                    thickness: 3,
                    color: Colors.black,
                  ),
                  itemCount: allQoutes.length,
                  itemBuilder: (context, index) => ListTile(
                    onTap: () {
                      Navigator.of(context).pushNamed(
                        'detail_page',
                        arguments: allQoutes[index],
                      );
                    },
                    title: Text(allQoutes[index].quote),
                    subtitle: Text(
                      "~ ${allQoutes[index].author}",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                      textAlign: TextAlign.end,
                    ),

                    // title: Text("${index + 1}"),
                  ),
                ),
          // child: SingleChildScrollView(
          //   child: Column(
          //     children: allQoutes
          //         .map(
          //           (e) => Card(
          //             color: Colors.white,
          //             child: ListTile(
          //               title: Text(e.quote),
          //               subtitle: Text(
          //                 "~${e.author}",
          //                 style: const TextStyle(color: Colors.grey),
          //                 textAlign: TextAlign.end,
          //               ),
          //             ),
          //           ),
          //         )
          //         .toList(),
          //   ),
          // ),
        ),
      ),
    );
  }
}
