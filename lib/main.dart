import 'package:flutter/material.dart';

import 'quote.dart';

void main() => runApp(MaterialApp(
      home: QuoteList(),
    ));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(author: 'Luis', text: 'Demo 1'),
    Quote(author: 'David', text: 'Demo 2'),
    Quote(author: 'Yauri', text: 'Demo 3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: quotes
            .map((quote) => Text('${quote.text} - ${quote.author}'))
            .toList(),
      ),
    );
  }
}

//quotes.map((quote) => Text(quote)).toList()
