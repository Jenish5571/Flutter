import 'dart:math';

import 'package:quote_app/headers.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  void showRandomQuote() {
    //Random  => dart:math
    Random r = Random();

    String category = "art";

    List<Quote> l = allQuotes
        .where(
          (element) => element.category == category,
        )
        .toList();

    Quote q = l[r.nextInt(l.length)];

    showDialog(
      context: context,
      builder: (context) => SimpleDialog(
        title: const Text("Welcome !!"),
        contentPadding: const EdgeInsets.all(16),
        children: [
          Text(q.quote),
        ],
      ),
    );
  }

  bool _isList = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(
        isList: _isList,
        toggleList: () {
          _isList = !_isList;
          setState(() {});
        },
      ),
      body: Column(
        children: [
          //Categories
          categoryList(),
          //Quotes
          _isList ? quotesListView() : quotesGridView(),
        ],
      ),
    );
  }
}
