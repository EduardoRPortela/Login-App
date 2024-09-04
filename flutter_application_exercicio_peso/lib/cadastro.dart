import 'package:flutter/material.dart';
import 'package:flutter_application_exercicio_peso/aluno.dart';
import 'package:flutter_application_exercicio_peso/listv.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => _cadastroState();
}

class _cadastroState extends State<Cadastro> {
  Image Imagem1 = Image.asset(
    'assets/images/COTIL.png',
    width: 500,
    height: 250,
  );
  TextEditingController nome1 = TextEditingController();
  TextEditingController ra1 = TextEditingController();
  String _nome = "";
  int _ra = 0;
  List<Aluno> ListaAluno = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cadastro de Alunos',
          style: TextStyle(
              fontSize: 20, fontFamily: 'New_Amsterdam', color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => ListV(ListaAluno),));
            },
            icon: Icon(Icons.school),
            color: Colors.white,
          )
        ],
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        color: Color.fromARGB(255, 255, 255, 255),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(50),
            child: Column(
              children: [
                Imagem1,
                SizedBox(height: 40),
                TextField(
                  controller: nome1,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: "Nome:",
                    prefixIcon: Icon(Icons.face),
                    fillColor: Color.fromARGB(255, 197, 192, 192),
                    filled: true,
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 50),
                TextField(
                  controller: ra1,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: "Ra:",
                    prefixIcon: Icon(Icons.email),
                    fillColor: Color.fromARGB(255, 197, 192, 192),
                    filled: true,
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 100),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        _nome = nome1.text;
                        _ra = int.parse(ra1.text);
                        Aluno A = new Aluno(
                          _nome,
                          _ra,
                        );
                        ListaAluno.add(A);
                        nome1.text = "";
                          ra1.text = "";

                        setState(() {});
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      child: Text("Cadastrar",
                          style: TextStyle(color: Colors.white)),
                    ),
                    SizedBox(width: 100),
                    ElevatedButton(
                        onPressed: () {
                          nome1.text = "";
                          ra1.text = "";

                          setState(() {});
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        child: Text("Limpar",
                            style: TextStyle(color: Colors.white))),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
