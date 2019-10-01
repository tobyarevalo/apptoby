import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: (){},
        color: Colors.blueAccent,),
        title:
        Center(child: Text('Crea tu Perfil',style: TextStyle(color: Colors.black),)),
        actions: <Widget>[
          Container(
            width: 50.00,
            height: 50.00,
          )
        ],
      ),
      body:SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Container(
                width: 280.00,
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Nombre de usuario',
                    labelText: 'Nombre de usuario',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Center(
                child: Container(
                  width: 280.00,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Apellido',
                      labelText: 'Apellido',
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Center(
                child: Container(
                  width: 280.00,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Email',
                      labelText: 'Email',
                    ),
                  ),
                ),
              ),
            ),Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Center(
                child: Container(
                  width: 280.00,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Confirma tu email',
                      labelText: 'Confirma tu email',
                    ),
                  ),
                ),
              ),
            ),Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Center(
                child: Container(
                  width: 280.00,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Frente DNI',
                      labelText: 'Frente DNI',
                    ),
                  ),
                ),
              ),
            ),

            Padding(
                padding: const EdgeInsets.only(top: 15.00),
              child: Center(
                child: Text('Por favor, selecciona el sexo que figura en tu DNI.'),
              ),
            ),


          ],

        ),
        ),
      ),
    );
  }
}