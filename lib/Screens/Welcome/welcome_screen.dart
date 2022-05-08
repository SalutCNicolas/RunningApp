import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:my_app/Screens/Accueil/accueil_screen.dart';
import 'package:provider/provider.dart';
import 'package:my_app/Screens/Accueil/components/background.dart';
import 'package:my_app/Screens/Accueil/components/body.dart';
import 'package:my_app/services/auth.dart';
import 'package:my_app/widget/line_chart_widget.dart';

import '../../widget/statistisWidget.dart';

class welcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreen createState() => _WelcomeScreen();
}

class _WelcomeScreen extends State<welcomeScreen> {
  final storage = new FlutterSecureStorage();

  @override
  void initState() {
    super.initState();
    readToken();
  }

  void readToken() async {
    String? token = await storage.read(key: 'token');
    Provider.of<Auth>(context, listen: false).tryToken(token: token);
    print(token);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        body: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            buildAppBar(context),
            StatisticWidget(),
          ],
        ),
      );

  SliverAppBar buildAppBar(BuildContext context) => SliverAppBar(
        flexibleSpace: FlexibleSpaceBar(
          background: LineChartWidget(),
        ),
        expandedHeight: MediaQuery.of(context).size.height * 0.5,
        stretch: true,
        title: Consumer<Auth>(
          builder: (context, auth, child) {
            if (auth.authenticated) {
              return Text(
                auth.user.name,
              );
            } else {
              return Text("Inconnu");
            }
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              Provider.of<Auth>(context, listen: false).logout();
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return accueilScreen();
                  },
                ),
              );
            },
          ),
        ],
        centerTitle: true,
        pinned: true,
        backgroundColor: Color(0xFFff6369),
      );
  /*
    return Drawer(
      child: Consumer<Auth>(
        builder: (context, auth, child) {
          if (auth.authenticated) {
            print(auth.user.name);
            return Text(
              auth.user.name,
            );
          } else {
            return Text("rien");
          }
        },
      ),
    );
  }*/
}
