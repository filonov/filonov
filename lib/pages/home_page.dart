import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:url_launcher/url_launcher.dart';

// https://stackoverflow.com/questions/60821607/how-to-add-hyperlink-to-text-in-a-markdown-in-flutter

class HomePage extends StatelessWidget {
  static String id = '/';
  final String result = """
# About
Pascal → Fortran → Delphi → C++ → C#, TSQL → PHP, MySQL, HTML, CSS, JS → Dart, Flutter → ...

# Contacts

GitHub: [filonov](https://github.com/filonov)

Mail: [denis@filonov.pro](mailto:denis@filonov.pro)

Telegram: @filonov

LinkedIn: [denisfilonov](https://www.linkedin.com/in/denisfilonov/)

Blog: [filonov.org](https://filonov.org)

Projects: [kachculator](https://filonov.pro/kachculator/)

""";
  //ScrollController controller = ScrollController();
  // Future<void> _onOpen(LinkableElement link) async {
  //   if (await canLaunch(link.url)) {
  //     await launch(link.url);
  //   } else {
  //     throw 'Could not launch $link';
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        title: Text("Denis Filonov"),
      ),
      //drawer: SideMenu(),
      body: SafeArea(
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(8.0),
            constraints: BoxConstraints(maxWidth: 800.0),
            child: Markdown(
              data: this.result,
              selectable: false,
              onTapLink: (href) => launch(href),
            ),
          ),
        ),
      ),
    );
  }
}
