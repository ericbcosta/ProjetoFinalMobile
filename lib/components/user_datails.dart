import 'package:flutter/material.dart';
import '../models/user.dart';

class UserDetails extends StatefulWidget {
  final User user;

  UserDetails(this.user);

  @override
  State<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  String disp = 'Indisponível';
  var color = Colors.red;

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleTextStyle: TextStyle(fontSize: 28),
        title: Text(
          widget.user.name.toString(),
        ),
        actions: [
          TextButton(
            onPressed: () {
              setState(() {
                count++;
                if (count % 2 == 0) {
                  disp = 'Indisponível';
                  color = Colors.red;
                } else {
                  disp = 'Disponível';
                  color = Colors.green;
                }
              });
            },
            child: Text(
              disp,
              style: TextStyle(color: Colors.white),
            ),
            style:
                ButtonStyle(backgroundColor: MaterialStatePropertyAll(color)),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.02,
          )
        ],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width * 0.9,
              child: Image.network(widget.user.avatarUrl),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: MediaQuery.of(context).size.width * 0.85,
              child: Text(
                widget.user.descricao.toString(),
                textAlign: TextAlign.justify,
                style: TextStyle(fontFamily: 'times new roman', fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
