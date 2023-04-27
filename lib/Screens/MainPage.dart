import "package:flutter/material.dart";
import "package:medapollo/Constant.dart";

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: (MediaQuery.of(context).size.height -
                  MediaQuery.of(context).padding.top) *
              0.3,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(radius: 40),
                      Icon(
                        Icons.menu,
                        size: 40,
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  width: MediaQuery.of(context).size.width * 0.85,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(16))),
                  child: TextField(
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 8.0),
                      hintText: "search",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Constant.Green),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Constant.Green),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Constant.Green,
                      ),
                    ),
                  ),
                ),
              ]),
        ),
        Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _card('Covid-19'),
                        SizedBox(width: 20),
                        _card('Blood pressure'),
                        SizedBox(width: 20),
                        _card("Pain killers")
                      ]),
                ),
                SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _card("Stomach"),
                        SizedBox(width: 20),
                        _card("Epiapcy"),
                        SizedBox(width: 20),
                        _card("Pancreatics")
                      ]),
                ),
                SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _card("Neuro pill"),
                        SizedBox(width: 20),
                        _card("Immune system"),
                        SizedBox(width: 20),
                        _card("Other")
                      ]),
                )
              ],
            ))
      ],
    );
  }

  _card(String label) {
    return Container(
      width: 100,
      height: 130,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: 80,
                child: Icon(
                  Icons.abc,
                  size: 60,
                )),
            Text(
              "${label}",
              style: TextStyle(),
              textAlign: TextAlign.center,
            )
          ]),
    );
  }
}
