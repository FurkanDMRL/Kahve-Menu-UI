import 'package:coffe/pages/coffee_type.dart';
import 'package:coffe/pages/drawer_menu.dart';
import 'package:coffe/util/coffee_tile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

String image_cap = 'assets/images/cappucino.jpg';
String image_latte = 'assets/images/latte.jpg';
String image_caffee = 'assets/images/caffee.jpg';
String image_milk = 'assets/images/milk.jpg';
String image_tea = 'assets/images/tea.jpg';

class _AnasayfaState extends State<Anasayfa> {
  final List coffeeType = [
    ['Tümü', true],
    ['Coppucino', false],
    ['Latte', false],
    ['Shot', false],
    ['Çay', false],
    ['Süt', false],
  ];
  // ignore: non_constant_identifier_names
  var Cappucino = [
    const CoffeeTile(
        coffeeImagePath: 'assets/images/cappucino.jpg',
        coffeeNames: 'Cappucino',
        coffePrice: '4.00'),
  ];
  // ignore: non_constant_identifier_names
  var Latte = [
    const CoffeeTile(
        coffeeImagePath: 'assets/images/latte.jpg',
        coffeeNames: 'Latte',
        coffePrice: '4.00'),
  ];
  // ignore: non_constant_identifier_names
  var Shot = [
    const CoffeeTile(
        coffeeImagePath: 'assets/images/caffee.jpg',
        coffeeNames: 'Shot',
        coffePrice: '4.00'),
  ];
  // ignore: non_constant_identifier_names
  var milk = [
    const CoffeeTile(
        coffeeImagePath: 'assets/images/milk.jpg',
        coffeeNames: 'Süt',
        coffePrice: '4.00'),
  ];
  // ignore: non_constant_identifier_names
  var cay = [
    const CoffeeTile(
        coffeeImagePath: 'assets/images/tea.jpg',
        coffeeNames: 'Çay',
        coffePrice: '2.00'),
  ];
  var all = [
    const CoffeeTile(
        coffeeImagePath: 'assets/images/cappucino.jpg',
        coffeeNames: 'Cappucino',
        coffePrice: '4.00'),
    const CoffeeTile(
        coffeeImagePath: 'assets/images/latte.jpg',
        coffeeNames: 'Latte',
        coffePrice: '4.00'),
    const CoffeeTile(
        coffeeImagePath: 'assets/images/caffee.jpg',
        coffeeNames: 'Shot',
        coffePrice: '4.00'),
    const CoffeeTile(
        coffeeImagePath: 'assets/images/milk.jpg',
        coffeeNames: 'Süt',
        coffePrice: '4.00'),
    const CoffeeTile(
        coffeeImagePath: 'assets/images/tea.jpg',
        coffeeNames: 'Çay',
        coffePrice: '2.00'),
  ];
  var all2 = [
    const CoffeeTile(
        coffeeImagePath: 'assets/images/cappucino.jpg',
        coffeeNames: 'Cappucino',
        coffePrice: '4.00'),
    const CoffeeTile(
        coffeeImagePath: 'assets/images/latte.jpg',
        coffeeNames: 'Latte',
        coffePrice: '4.00'),
    const CoffeeTile(
        coffeeImagePath: 'assets/images/caffee.jpg',
        coffeeNames: 'Shot',
        coffePrice: '4.00'),
    const CoffeeTile(
        coffeeImagePath: 'assets/images/milk.jpg',
        coffeeNames: 'Süt',
        coffePrice: '4.00'),
    const CoffeeTile(
        coffeeImagePath: 'assets/images/tea.jpg',
        coffeeNames: 'Çay',
        coffePrice: '2.00'),
  ];

  @override
  Widget build(BuildContext context) {
    void coffeTypeSelect(int tutulanSayi) {
      setState(() {
        switch (tutulanSayi) {
          case 1:
            all = Cappucino;
            break;
          case 2:
            all = Latte;
            break;
          case 3:
            all = Shot;
            break;
          case 4:
            all = cay;
            break;
          case 5:
            all = milk;
            break;
          case 0:
            all = all2;
            break;
          default:
        }
        for (var i = 0; i < coffeeType.length; i++) {
          if (i == tutulanSayi) {
            coffeeType[tutulanSayi][1] = true;
          } else {
            coffeeType[i][1] = false;
          }
        }
      });
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey.shade900,
      body: Column(
        children: [
          //find the best coffee
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              'Find the best caffee for you',
              style: GoogleFonts.bebasNeue(
                fontSize: 56,
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),

          //search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.search,
                ),
                hintText: 'Find your caffee..',
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600)),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),

//hortizonal  list view
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SizedBox(
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: coffeeType.length,
                  itemBuilder: (context, index) {
                    return CoffeeType(
                      coffeeType: coffeeType[index][0],
                      isSelect: coffeeType[index][1],
                      onTap: () {
                        setState(() {
                          coffeTypeSelect(index);
                        });
                      },
                    );
                  },
                )),
          ),

          //horizontal list view
          SizedBox(
            height: 280,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: all,
            ),
          ),
          Expanded(
              child: Text(
            'YEŞİLÇAM',
            style: GoogleFonts.alfaSlabOne(fontSize: 38, shadows: [
              const Shadow(
                offset: Offset(10.0, 10.0),
                blurRadius: 10.0,
                color: Color.fromARGB(255, 9, 0, 0),
              ),
              const Shadow(
                offset: Offset(-5.0, -5.0),
                blurRadius: 10.0,
                color: Color.fromARGB(255, 9, 0, 0),
              ),
            ]),
          ))
        ],
      ),
    );
  }
}
