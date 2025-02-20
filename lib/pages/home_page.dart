import 'package:coffe/pages/alertSayfasi.dart';
import 'package:coffe/pages/anaSayfa.dart';
import 'package:coffe/pages/drawer_menu.dart';
import 'package:coffe/pages/favotite.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int secilenMenuItem = 0;
  List<Widget> tumSayfalar = [];

  late Anasayfa sayfaanaSayfa;
  late Favotite favotiteSayfasi;
  late Alertsayfasi alertsayfasi;

  //late Favorite sayfaaramaSayfasi;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sayfaanaSayfa = const Anasayfa();
    favotiteSayfasi = const Favotite();
    alertsayfasi = const Alertsayfasi();
    tumSayfalar = [sayfaanaSayfa, favotiteSayfasi, alertsayfasi];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.grey.shade900,
        drawer: const DrawerMenu(),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20.0, top: 15),
              child: Icon(Icons.ads_click),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
          ],
          onTap: (value) {
            setState(() {
              secilenMenuItem = value;
            });
          },
        ),
        body: tumSayfalar[secilenMenuItem]);
  }
}
