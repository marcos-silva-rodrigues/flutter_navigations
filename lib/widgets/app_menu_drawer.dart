import 'package:app_ml/pages/page02.dart';
import "package:flutter/material.dart";
import "package:app_ml/pages/page01.dart";

class AppMenuDrawer extends StatelessWidget {
  const AppMenuDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
            height: 120.0,
            child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 241, 89, 1),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          border: Border.all(color: Colors.black, width: 4.0)),
                      child: CircleAvatar(
                        child: Icon(Icons.people),
                        backgroundColor: Color.fromRGBO(255, 241, 89, 1),
                        foregroundColor: Colors.black,
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.all(6.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Ola Marcos!",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold)),
                            Text("Nivel Avançado")
                          ],
                        ))
                  ],
                ))),
        _itemDrawer(context, Page01(), icon: Icon(Icons.home), text: "Home"),
        Divider(color: Colors.grey),
        _itemDrawer(context, Page01(),
            icon: Icon(Icons.hotel), text: "Página 01"),
        Divider(color: Colors.grey),
        _itemDrawer(context, Page02(),
            icon: Icon(Icons.label_important), text: "Página 02"),
        Divider(color: Colors.grey),
        _itemDrawer(context, Page01(),
            icon: Icon(Icons.location_searching),
            text: "Página 03",
            badge: "5"),
        Divider(color: Colors.grey),
        _itemDrawer(context, Page01(),
            icon: Icon(Icons.exit_to_app), text: "Sair"),
      ],
    );
  }

  Widget _itemDrawer(
    BuildContext context,
    page, {
    required Icon icon,
    required String text,
    String badge = "",
  }) {
    return ListTile(
        leading: IconTheme(
          child: icon,
          data: IconThemeData(color: Colors.black),
        ),
        title: Text(text, style: TextStyle(color: Colors.black)),
        trailing: Container(
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(100.0)),
          child: badge.isEmpty
              ? Text("")
              : Padding(
                  padding: EdgeInsets.fromLTRB(6.0, 2.0, 6.0, 2.0),
                  child: Text(
                    badge,
                    style: TextStyle(
                        backgroundColor: Colors.black, color: Colors.white),
                  ),
                ),
        ),
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => page));
        });
  }
}
