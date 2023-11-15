import 'package:flutter/material.dart';

import '../data/book_data.dart';
import '../main.dart';
import '../model/book.dart';
import '../widget/search_widget.dart';
import '1.dart';

class FilterLocalListPage extends StatefulWidget {
  @override
  FilterLocalListPageState createState() => FilterLocalListPageState();
}

class FilterLocalListPageState extends State<FilterLocalListPage> {
  late List<Book> books;
  String query = '';

  @override
  void initState() {
    super.initState();

    books = allBooks;
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text(MyApp.title),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            buildSearch(),
            Expanded(
              child: ListView.builder(
                itemCount: books.length,
                itemBuilder: (context, index) {
                  final book = books[index];

                  return buildBook(book);
                },
              ),
            ),
          ],
        ),
      );

  Widget buildSearch() => SearchWidget(
        text: query,
        hintText: 'Title or Author Name',
        onChanged: searchBook,
      );

  Widget buildBook(Book book) => ListTile(
        leading: SizedBox(
            width: 35,
            height: 35,
            child: Center(
                child: Text(
              '${book.id}',
              style: const TextStyle(fontSize: 30),
            ))),
        title: Text(book.title),
        subtitle: Text(book.author),
        onTap: () {
          onTap(book.id);
        },
      );

  void searchBook(String query) {
    final books = allBooks.where((book) {
      final titleLower = book.title.toLowerCase();
      final authorLower = book.author.toLowerCase();
      final searchLower = query.toLowerCase();

      return titleLower.contains(searchLower) ||
          authorLower.contains(searchLower);
    }).toList();

    setState(() {
      this.query = query;
      this.books = books;
    });
  }

  void onTap(int id) {
    FocusScope.of(context).unfocus;
    switch (id) {
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const FirstTask()),
        );
        break;
      case 2:
        break;
      default:
    }
  }
}
