import 'dart:ui';

import 'package:febrafarapp/components/appbar.dart';
import 'package:flutter/material.dart';

var offers = [
  {'id': '1', 'nome': 'Band-Aid'},
  {'id': '2', 'nome': 'Band-Aid'},
  {'id': '3', 'nome': 'Band-Aid'}
];

class HomePage extends StatelessWidget {
  HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: Text('Home'),
      ),
      body: Padding(
          padding: EdgeInsets.all(15.0),
          child: ListView(children: [
            CardSlide(),
            ListaOfertasHorz(),
            CardAnotherOffers(),
            CardDescontometro(),
            FacilitiesForYou()
          ])),
    );
  }
}

class CardAnotherOffers extends StatelessWidget {
  const CardAnotherOffers({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30, bottom: 30),
      child: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 5),
              child: imageOffer(),
            ),
            Expanded(
              child: Container(
                  margin: EdgeInsets.only(left: 25, right: 0),
                  child: Text(
                    'Veja outras ofertas que separamos para voce!',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(133, 133, 133, 1.0),
                        fontSize: 16),
                    softWrap: true,
                  )),
            ),
            SizedBox(
              height: 30,
              width: 30,
              child: new IconButton(
                onPressed: () {},
                padding: new EdgeInsets.all(0.0),
                icon: new Icon(
                  Icons.keyboard_arrow_right_sharp,
                  size: 30,
                  color: Color.fromRGBO(133, 133, 133, 1.0),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  imageOffer() {
    return Image.asset('images/more_offers.jpg');
  }
}

class ListaOfertasHorz extends StatelessWidget {
  const ListaOfertasHorz({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(
                    bottom: 5,
                  ),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: Color.fromRGBO(43, 50, 79, 1.0),
                              width: 2.5))),
                  child: Text('OFERTAS',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Color.fromRGBO(43, 50, 79, 1.0),
                        //decoration: TextDecoration.underline),
                      )),
                ),
                OffersCard()
              ],
            ))
          ],
        ));
  }
}

class OffersCard extends StatelessWidget {
  const OffersCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          generateOfferCard('bandaid'),
          generateOfferCard('band-aid'),
          generateOfferCard('bandAid')
        ],
      ),
    );
  }
}

iterableOffers() {
  var array = [];
  for (var item in offers) {
    array.add(generateOfferCard(item['nome']));
  }
  return array;
}

generateOfferCard(String name) {
  return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.only(top: 15, right: 15),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    child: Image.asset(
                  'images/bandaid.png',
                  height: 95,
                  width: 110,
                )),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Text(
                    name,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(133, 133, 133, 1),
                        fontFamily: 'Raleway'),
                  ),
                ),
                Text(
                  'Leve 3'.toUpperCase(),
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.green[600],
                      fontFamily: 'Raleway'),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  child: RichText(
                    text: TextSpan(
                        style: TextStyle(
                          fontFamily: 'Raleway',
                          color: Color.fromRGBO(133, 133, 133, 1),
                        ),
                        children: [
                          TextSpan(text: 'Pague '),
                          TextSpan(
                              text: '2',
                              style: TextStyle(fontWeight: FontWeight.bold))
                        ]),
                  ),
                ),
                Container(
                    width: 110,
                    height: 34,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('ATIVAR'),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green),
                      ),
                    ))
              ],
            ))
          ],
        ),
      ));
}

class ImageOffer extends StatelessWidget {
  const ImageOffer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        'images/offer.jpg',
        height: 30,
        width: 30,
        fit: BoxFit.cover,
        alignment: new Alignment(-1.0, -1.0),
      ),
    );
  }
}

class CardSlide extends StatelessWidget {
  const CardSlide({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        //margin: EdgeInsets.all(25.0),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Text(
                        'Resgate seu brinde',
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textAlign: TextAlign.right,
                      )), //asdasd
                  Container(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: Text(
                        'Para liberar seu brinde é necessario se cadastrar em nosso APP'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Atualizar Cadastro'),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromRGBO(43, 50, 79, 1.0))),
                  ),
                ],
              )),
              Container(
                child: new Image.asset(
                  'images/gift.png',
                  height: 120,
                  width: 120,
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
        ));
  }
}

class CardDescontometro extends StatelessWidget {
  CardDescontometro({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: Color.fromRGBO(43, 50, 79, 1),
      child: Row(
        children: [
          Expanded(
              child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                titleDesc,
                Text(
                  'Voce ja economizou',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1),
                ),
                priceDesc
              ],
            ),
          )),
          logoDescontometro
        ],
      ),
    );
  }
}

Widget logoDescontometro = Container(
  alignment: Alignment.centerRight,
  child: Image.asset('images/logo_descontometro.png'),
);

Widget priceDesc = Container(
    child: Text(
  'R\$ 283,71',
  style:
      TextStyle(color: Colors.white, fontSize: 38, fontWeight: FontWeight.w300),
));

Widget titleDesc = Container(
    margin: EdgeInsets.only(bottom: 20),
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 2),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Color.fromRGBO(90, 95, 118, 1.0),
        border: Border.all(color: Color.fromRGBO(90, 95, 118, 1.0))),
    //color: Color.fromRGBO(90, 95, 118, 1.0),
    child: Text('Descontômetro'.toUpperCase(),
        style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w300,
            letterSpacing: 1,
            fontSize: 13)));











class FacilitiesForYou extends StatelessWidget {
  const FacilitiesForYou({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:30),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [facilitiesTitle, facilitiesCardsGroup])
    );
  }     
  
}

Widget facilitiesTitle = Container(
  margin: EdgeInsets.only(bottom: 10),
  padding: EdgeInsets.only(bottom: 10),
  decoration: BoxDecoration(
      border: Border(
          bottom:
              BorderSide(color: Color.fromRGBO(43, 50, 79, 1.0), width: 2.5))),
  child: Text('Facilidades para voce'.toUpperCase(),
      style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Color.fromRGBO(43, 50, 79, 1.0))),
);

Widget facilitiesCardsGroup = Row(
  mainAxisSize: MainAxisSize.max,
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  crossAxisAlignment: CrossAxisAlignment.end,
  children: [facilitiesCards, facilitiesCards2],
);



generateBigCards(String image, String text) {
  return Container(
    margin: EdgeInsets.only(bottom: 5),
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),
        child: SizedBox(
      width: 180,
      height: 190,
      
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            image,
            width: 70,
            height: 70,
            color: Colors.green,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal:15, vertical: 10),
            child:  Text('$text', style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 16),textAlign: TextAlign.center,),
          )
         
        ],
      ),
    )),
  );
}



generateSmallCards(String image, String text) {
  return Container(
    margin: EdgeInsets.only(bottom: 5),
    child: Card(
       shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),
        child: SizedBox(
      width: 128,
      height: 120,
      
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            image,
            width: 40,
            height: 40,
            color: Colors.green,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal:15),
            child:  Text('$text', style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 14),textAlign: TextAlign.center,),
          )
         
        ],
      ),
    )),
  );
}

Widget facilitiesCards = Container(
  //crossAxisAlignment: CrossAxisAlignment.stretch,
  child: Expanded(
      child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      generateBigCards('images/produto.png', 'Produtos'),
      generateBigCards('images/medicamentos.png', 'Lembrete de Medicamentos'),
    ],
  )),
);

Widget facilitiesCards2 = Container(
  //crossAxisAlignment: CrossAxisAlignment.stretch,
  child: Expanded(
      child: Column(
    // crossAxisAlignment: CrossAxisAlignment.stretch,
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    mainAxisSize: MainAxisSize.max,
    children: [
      generateSmallCards('images/local.png', 'Farmácias'),
      generateSmallCards('images/wpp.png', 'WhatsApp da Loja'),
      generateSmallCards('images/cartao.png', 'Cartão Fidelidade')
      
    ],
  )),
);
