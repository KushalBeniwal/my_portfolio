import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Startup Name Generator",
      theme: ThemeData(
        primaryColor: Colors.lightBlue,
      ),
      home: RandomWords(),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Container(
              height: 800,
            ),
            BottomAppBar(
              color: Colors.lightBlueAccent,
              child: Center(
                child: Text("Work in Progress"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Text("Startup name generator"),
  //       actions: [
  //         IconButton(icon: Icon(Icons.list), onPressed: _pushSaved),
  //       ],
  //     ),
  //     body: _buildSuggestions(),
  //   );
  // }

  // final List<WordPair> _suggestions = <WordPair>[];
  // final Set<WordPair> _saved = <WordPair>{};
  // final TextStyle _biggerFont = const TextStyle(fontSize: 18);

  // Widget _buildSuggestions() {
  //   return ListView.builder(
  //     padding: EdgeInsets.all(16),
  //     itemBuilder: (BuildContext _context, int i) {
  //       if (i.isOdd) {
  //         return Divider();
  //       }
  //       final int indx = i ~/ 2;
  //       if (indx >= _suggestions.length) {
  //         _suggestions.addAll(generateWordPairs().take(10));
  //       }
  //       return _buildRow(_suggestions[indx]);
  //     },
  //   );
  // }

  // Widget _buildRow(WordPair pair) {
  //   final alreadySaved = _saved.contains(pair);
  //   return ListTile(
  //     title: Text(
  //       pair.asPascalCase,
  //       style: _biggerFont,
  //     ),
  //     trailing: Icon(
  //       alreadySaved ? Icons.favorite : Icons.favorite_border,
  //       color: alreadySaved ? Colors.red : null,
  //     ),
  //     onTap: () {
  //       setState(() {
  //         if (alreadySaved) {
  //           _saved.remove(pair);
  //         } else {
  //           _saved.add(pair);
  //         }
  //       });
  //     },
  //   );
  // }

  // void _pushSaved() {
  //   Navigator.of(context).push(
  //     MaterialPageRoute<void>(
  //       builder: (BuildContext context) {
  //         final tiles = _saved.map(
  //           (WordPair pair) {
  //             return ListTile(
  //               title: Text(
  //                 pair.asPascalCase,
  //                 style: _biggerFont,
  //               ),
  //             );
  //           },
  //         );
  //         final divided = ListTile.divideTiles(
  //           context: context,
  //           tiles: tiles,
  //         ).toList();

  //         return Scaffold(
  //           appBar: AppBar(
  //             title: Text('Saved Suggestions'),
  //           ),
  //           body: ListView(children: divided),
  //         );
  //       },
  //     ),
  //   );
  // }
}
