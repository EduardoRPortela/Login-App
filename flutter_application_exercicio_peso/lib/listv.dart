import 'package:flutter/material.dart';
import 'package:flutter_application_exercicio_peso/aluno.dart';
import 'package:flutter_application_exercicio_peso/cadastro.dart';

class ListV extends StatefulWidget {
  List<Aluno> listaAl = [];
  ListV(this.listaAl,{super.key});

  @override
  State<ListV> createState() => _ListVState();
}

class _ListVState extends State<ListV> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
 appBar: AppBar(
        title: Text(
          'List View',
          style: TextStyle(
              fontSize: 20, fontFamily: 'New_Amsterdam', color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent,
      ),
        body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: Icon(Icons.arrow_back),
            ),
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => Divider(
                thickness: 2,
              ),
              itemCount: widget.listaAl.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    child: Text(widget.listaAl[index].nome[0]),
                  ),
                  title: Text(widget.listaAl[index].nome),
                  subtitle: Text(widget.listaAl[index].ra.toString()),
                  trailing: Icon(Icons.school_outlined),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}