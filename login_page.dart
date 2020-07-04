import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {  
  @override
  _LoginPageState createState() => _LoginPageState();
  
}
  
class _LoginPageState extends State<LoginPage> {
 final appTitle = 'ACERVO ESCOLAR'; 

 String email;
  String password;
  void setEmail(String newValue) {
    setState(() {
      this.email = email;
    });
  }
  void setPassword(String newValue) {
    setState(() {
      this.password = newValue;
    });
 
    }
      @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(appTitle)),
        body: Padding (
        padding: EdgeInsets.all(10),
        child: Container(
          decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/acervol.png"),
            fit: BoxFit.cover,
          ),
        ),
          child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              autofocus: true,
              keyboardType: TextInputType.number,
              style: new TextStyle(color: Colors.black, fontSize: 25),
              decoration: InputDecoration(
                 border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5)
                ),
                labelText: "Email",
                labelStyle: TextStyle(color: Colors.black) ),

            ), 
            Divider(),

            TextFormField(
              autofocus: true,
              obscureText: true,
              keyboardType: TextInputType.text,
              style: new TextStyle(color: Colors.black, fontSize: 20),
              decoration: InputDecoration( border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5)
                ),
                labelText: "Senha",
                labelStyle: TextStyle(color: Colors.black) ),

            ), 
            Divider(),
            ButtonTheme(
              height: 60.0,
              child: RaisedButton(
                onPressed: () => {},
                child: Text(
                 "Entrar",
                ),
                ),

            ),
             
           ],
          ),
          ),
        ),
       ),
      drawer: Drawer(        
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Menu principal'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Infantis'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Acadêmicos'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  
}