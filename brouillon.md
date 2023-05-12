return Container(
     color: Colors.black,
      child: Column(
        children: <Widget> [
         Container(
          color: Colors.black,
          child: TextField(
            // récuperer l'email
            onChanged: (value) {
              email = value;
            },
            decoration: const InputDecoration(
              border: InputBorder.none,
              labelText: "Entrez votre email"
            ),
          ),
                
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
          color: Colors.black,
          child: TextField(
            // récuperer l'email
            onChanged: (value) {
              password = value;
            },
            decoration: const InputDecoration(
              border: InputBorder.none,
              labelText: "Entrez votre mot de passe"
            ),
          ),
                
          ),
        const SizedBox(
            height: 10,
          ),
          ElevatedButton(onPressed: (() async {
            if (email == 'mensah@gmail.com' && password == "12345") {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Accueil()));
            }
          }), child: const Text('Se connecter'))
        ],
      )
      
      
    );