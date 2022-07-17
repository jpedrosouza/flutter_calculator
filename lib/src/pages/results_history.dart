import 'package:flutter/material.dart';

class ResultsHistoryPage extends StatefulWidget {
  final List<String> resultsHistory;

  const ResultsHistoryPage(this.resultsHistory, {Key? key}) : super(key: key);

  @override
  State<ResultsHistoryPage> createState() => _ResultsHistoryPageState();
}

class _ResultsHistoryPageState extends State<ResultsHistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Histórico de operações'),
      ),
      body: ListView.builder(
        primary: false,
        shrinkWrap: true,
        itemCount: widget.resultsHistory.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(widget.resultsHistory[index]),
          );
        },
      ),
    );
  }
}
