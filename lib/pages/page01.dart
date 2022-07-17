import "package:flutter/material.dart";

class Page01 extends StatelessWidget {
  const Page01({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Página 01",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Color.fromRGBO(255, 241, 89, 1),
      ),
      body: Center(
        child: Text("Pagina 01"),
      ),
    );
  }
}
