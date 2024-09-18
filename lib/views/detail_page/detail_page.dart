import 'package:flutter/material.dart';
import 'package:quotes_app/models/quotes_model.dart';
import 'package:quotes_app/utils/my_extension.dart';
import 'package:quotes_app/utils/my_font.dart';
import 'package:quotes_app/utils/quote_utils.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  String quotesFont = MyFonts.NekroOne.name;
  String authorFonts = MyFonts.PlayWrite.name;
  int quoteCounter = 18;
  int authorCounter = 14;

  Color quoteFontColor = Colors.white;
  Color authorFontColor = Colors.black;
  List<Color> myColors = [
    ...Colors.primaries,
  ];
  Color cardColor = Colors.blue.shade300;
  double cardBgColor = 1;

  String? bgImage;
  List<String> bgImages = [
    "https://thumbs.dreamstime.com/b/speech-bubble-square-empty-quote-bracket-vector-speech-bubble-quote-blank-template-empty-quote-template-business-quote-card-116372097.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjYEJvSa2d_ZG0ZYUFFCf3gU0KyoNS3ivklg&s",
  ];

  @override
  Widget build(BuildContext context) {
    QuotesModel quote =
        ModalRoute.of(context)!.settings.arguments as QuotesModel;
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Page"),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                quotesFont = MyFonts.NekroOne.name;
                authorFonts = MyFonts.PlayWrite.name;
                quoteCounter = 18;
                authorCounter = 14;
                quoteFontColor = Colors.white;
                authorFontColor = Colors.black;
                cardColor = Colors.blue.shade300;
                cardBgColor = 1;
                bgImage = null;
              });
            },
            icon: Icon(Icons.refresh),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: size.height * 0.45,
                width: double.infinity,
                padding: EdgeInsets.all(16),
                alignment: Alignment(0, -1),
                decoration: BoxDecoration(
                  color: cardColor.withOpacity(cardBgColor),
                  borderRadius: BorderRadius.circular(16),
                  image: bgImage == null
                      ? null
                      : DecorationImage(
                          image: NetworkImage(bgImage!),
                        ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Quotes
                    Text(
                      quote.quote,
                      maxLines: 6,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: quoteFontColor,
                        fontSize: quoteCounter.toDouble(),
                        fontFamily: quotesFont,
                      ),
                    ),
                    //Author Name
                    Text(
                      "~ ${quote.author}",
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        color: authorFontColor,
                        fontSize: authorCounter.toDouble(),
                        fontWeight: FontWeight.w600,
                        fontFamily: authorFonts,
                      ),
                    ),
                  ],
                ),
              ),
              15.h,
              //Quotes Font Title
              Row(
                children: [
                  Text(
                    "Quotes Font",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Spacer(),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          quoteCounter--;
                        });
                      },
                      icon: Icon(Icons.remove)),
                  Text("${quoteCounter}"),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          quoteCounter++;
                        });
                      },
                      icon: Icon(Icons.add)),
                ],
              ),
              10.h,
              //Quotes Font Selection
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: MyFonts.values
                      .map(
                        (f) => TextButton(
                          onPressed: () {
                            setState(() {
                              quotesFont = f.name;
                            });
                          },
                          child: Text(
                            "Abc",
                            style: TextStyle(fontFamily: f.name, fontSize: 16),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
              15.h,
              //Author Font Title
              Row(
                children: [
                  Text(
                    "Author Font",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Spacer(),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          authorCounter--;
                        });
                      },
                      icon: Icon(Icons.remove)),
                  Text("${authorCounter}"),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          authorCounter++;
                        });
                      },
                      icon: Icon(Icons.add)),
                ],
              ),
              10.h,
              //Author Font Selection
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: MyFonts.values
                      .map(
                        (f) => TextButton(
                          onPressed: () {
                            setState(() {
                              authorFonts = f.name;
                            });
                          },
                          child: Text(
                            "Abc",
                            style: TextStyle(fontFamily: f.name),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
              15.h,
              //Quotes Font Color
              Text(
                "Quotes Font Color",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              10.h,
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: myColors
                      .map(
                        (e) => GestureDetector(
                          onTap: () {
                            setState(() {
                              quoteFontColor = e;
                            });
                          },
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                height: 45,
                                width: 45,
                                margin: EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border:
                                      quoteFontColor == e ? Border.all() : null,
                                ),
                              ),
                              Container(
                                height: 40,
                                width: 40,
                                margin: EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                  color: e,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
              15.h,
              //Author Font Color title
              Text(
                "Author Font Color",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              10.h,
              // colors option
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: myColors
                      .map(
                        (e) => GestureDetector(
                          onTap: () {
                            authorFontColor = e;
                            setState(() {});
                          },
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                height: 45,
                                width: 45,
                                margin: EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                  border: authorFontColor == e
                                      ? Border.all()
                                      : null,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              Container(
                                height: 40,
                                width: 40,
                                margin: EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                  color: e,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
              //Card Color options
              5.h,
              Text(
                "Card Color",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              10.h,
              // colors option
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: myColors
                      .map(
                        (e) => GestureDetector(
                          onTap: () {
                            cardColor = e;
                            setState(() {});
                          },
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                height: 45,
                                width: 45,
                                margin: EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                  border: cardColor == e ? Border.all() : null,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              Container(
                                height: 40,
                                width: 40,
                                margin: EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                  color: e,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
              10.h,
              Text(
                "Select Opacity",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
              5.h,
              Slider(
                value: cardBgColor,
                divisions: 10,
                label: "${cardBgColor}",
                onChanged: (val) {
                  cardBgColor = val;
                  setState(() {});
                },
              ),
              15.h,
              Text(
                "Select Background Image",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              10.h,
              Row(
                children: bgImages
                    .map(
                      (e) => GestureDetector(
                        onTap: () {
                          setState(() {
                            bgImage = e;
                          });
                        },
                        child: Container(
                          height: 80,
                          width: 80,
                          margin: EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(e),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
