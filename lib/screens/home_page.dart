import 'package:flutter/material.dart';
import 'package:myapp/screens/profile_view.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragEnd: (DragEndDetails details) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfileView()),
                  );
                },
          child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Home Page"),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.person),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfileView()),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
