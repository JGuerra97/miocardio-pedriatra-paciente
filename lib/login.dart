import 'package:flutter/material.dart';
import 'package:miocardio_paciente/functions/navigatorBar.dart';

class Login extends StatefulWidget{
  LoginState createState() => LoginState();

}
class LoginState extends State<Login>{

  @override
  Widget build(BuildContext context) {
    return Scaffold( // inicio da estrutura da pagina
      backgroundColor: Color.fromRGBO(253, 224, 224, 1),
       body: Container(
        padding: EdgeInsets.all(30),
        child: Column( //Columa que contem os somponentes da pagina
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image(image: AssetImage('assets/logo.jpg'), width: 400, height: 200,), //imagem do logotipo
            TextFormField( //Form do email
              decoration: InputDecoration(
                 labelText: 'Email',
                 hoverColor: Colors.white,
              )
            ),
            TextFormField( //Form da senha
              maxLength: 40,
              decoration: InputDecoration(
                 labelText: 'Senha'
              )
            ),
            FlatButton(
              padding: EdgeInsets.only(top: 0.0),
              shape: Border.all(width: 0.5, color: Colors.red),
              color: Color.fromRGBO(249, 124, 124, 1),
              child: Text('Salvar',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => NavigationBar()));
              }),
          ],
        ),
       ),
      );
  }
}