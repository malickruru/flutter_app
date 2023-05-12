
import 'package:flutter/material.dart';
import 'package:my_app/constant/chargement.dart';
import 'package:my_app/page/accueil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late String email;
  late String password;
  bool chargement = false;

  @override
  Widget build(BuildContext context) {
    return chargement ? const Chargement() :  Stack(
      children: [
        Scaffold(
          appBar: AppBar(title: const Text('page de connexion'),centerTitle: true,
          ),
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column( children: <Widget> [
          const SizedBox(
            height: 25,
          ),
            _titleLogin(),
            const SizedBox(
            height: 10,
          ),
          _messageLogin(),
           const SizedBox(
            height: 10,
          ),
          _formLogin()
          ]),
        ),
        )
      ],
    ) ;
  }

  Widget _messageLogin(){
    return  Container(
      color : Colors.transparent,
      child: const Text("Connectez-vous",style: TextStyle(fontSize: 30,color: Colors.white))
    );
}
 Widget _titleLogin(){
    return  Container(
      color : Colors.transparent,
      child:  Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Unofficial_JavaScript_logo_2.svg/197px-Unofficial_JavaScript_logo_2.svg.png")
    );
  }

 Widget _formLogin(){
    return Container(
     color: Colors.transparent,
      child: Column(
        children: <Widget> [
         Container(
          color: Colors.transparent,
          child: TextField(
            // récuperer l'email
            onChanged: (value) {
              email = value;
            },
            style: const TextStyle(color: Colors.white),
            decoration: const InputDecoration(
              border: InputBorder.none,
              labelText: "Entrez votre email",
            ),
          ),
                
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
          color: Colors.transparent,
          child: TextField(
            // récuperer l'email
            onChanged: (value) {
              password = value;
            },
            style: const TextStyle(color: Colors.white),
            decoration: const InputDecoration(
              border: InputBorder.none,
              labelText: "Entrez votre mot de passe"
            ),
            obscureText: true,
          ),
                
          ),
        const SizedBox(
            height: 10,
          ),
          ElevatedButton(onPressed: () async { 
            setState(() {
              chargement = true;
            });
            if (email == 'mensah@gmail.com' && password == "12345") {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Accueil()));
            }else{
              const Text("erreur des identifiants");
            }
          }, child: const Text('Se connecter'))
        ],
      )
      
      
    );
  }
}
