
import 'package:flutter/material.dart';
import 'package:my_app/model/personne.dart';
import 'package:my_app/page/infopersonne.dart';

final crs = List <Personne>.generate(12, (i) => Personne("Farah $i", "ma voisine $i", "images/$i.png"));

class Accueil extends StatefulWidget {
  const Accueil({super.key});

  @override
  State<Accueil> createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("les images de Farah"),
        centerTitle: true),
        body: ListView.separated(itemBuilder: (BuildContext context, int index ){
          Personne personne =  Personne(crs[index].name, crs[index].description, crs[index].image);
          return Container(
            color: Colors.transparent,
            height: 70,
            child: ListTile(onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) =>  InfoPersonne(personne:personne)));
            },),
          );
        }, separatorBuilder: ( BuildContext context, index) => const Divider(color: Colors.pinkAccent,), itemCount: crs.length),
    );
  }
}

