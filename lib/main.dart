import 'package:flutter/material.dart';

void main() => runApp(LoginApp());

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tela de Login - Projeto aplicado',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              //LOGO
              Container(
                margin: EdgeInsets.only(
                    bottom: 20.0), // Espaçamento abaixo da imagem
                child: Image.asset('assets/imagens/logo.png', width: 50),
              ),

              //USUÁRIO
              Container(
                alignment: Alignment
                    .centerLeft, // Alinha o texto com o início do campo
                child: Text(
                  'Usuário',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 5), //Espaçamento entre o texto e o campo

              //Campo de login
              Container(
                width: 315,
                height: 40,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 0.70, color: Color(0xFF091B4A)),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 4,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: TextField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(10.0),
                  ),
                ),
              ),
              SizedBox(height: 30),

              //Texto SENHA
              Container(
                alignment: Alignment
                    .centerLeft, // Alinha o texto com o início do campo
                child: Text(
                  'Senha',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 5), //Espaçamento entre o texto e o campo

              //Campo de senha
              Container(
                //Senha
                width: 315,
                height: 40,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 0.70, color: Color(0xFF091B4A)),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 4,
                      offset: Offset(0, 4),
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(10.0),
                  ),
                ),
              ),

              SizedBox(
                  height:
                      50), // Espaço entre os campos e o link "Esqueci minha senha"
              TextButton(
                onPressed: () {
                  // Implementar a lógica de recuperação de senha aqui
                  print('Esqueci minha senha');
                },
                child: Text(
                  'Esqueci minha senha',
                  style: TextStyle(color: Colors.white),
                ),
              ),

              SizedBox(height: 10),
              Container(
                //Botão
                width: 150,
                height: 28,
                child: ElevatedButton(
                  onPressed: () {
                    // Implementar a lógica de autenticação aqui
                    String username = _usernameController.text;
                    String password = _passwordController.text;
                    print('Usuário: $username, Senha: $password');
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: BorderSide(width: 0.90, color: Color(0xFF091B4A)),
                    ),
                  ),
                  child: Text(
                    'Avançar',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15), // Altera a cor do texto
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
