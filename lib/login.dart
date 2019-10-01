import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  IconData passicon = Icons.visibility_off;
  bool hidepass=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(child: Container()),
              Center(
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 30.0),
                    child: Image.asset(
                      '',
                      scale: 2.0,
                    ),
                  ),
                ),
              ),
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
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: Container(
                    width: 280.00,
                    child: TextFormField(
                      obscureText: hidepass,
                      decoration:  InputDecoration(
                        hintText: 'Contraseña',
                        labelText: 'Contraseña',
                        suffixIcon: IconButton(icon: Icon(passicon), onPressed: (){_hidepass();}),

                                ),

                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50.0, top: 15.0),
                child: GestureDetector(
                  child: Container(
                    child: Text(
                      'Olvidé mi contraseña',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:17),
                child: Center(
                  child: InkWell(
                    onTap: (){},

                    child: Container(
                      height: 45,
                      width: MediaQuery.of(context).size.width - 80.00,

                      child: DecoratedBox(
                          child: Center(
                              child: Text(
                            'Ingresar',
                            style: TextStyle(color: Colors.white,fontSize:17 ),
                          )),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.00),
                            color: Color(0xff1873f3),
                          )),
                    ),
                  ),
                ),
              ),
              Expanded(child: Container()),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30.0 ),
                    child: Container(
                      child: Text('¿Todavia no tenes usuario?',
                        style: TextStyle(color: Colors.grey),),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30.0,left: 8.0),
                    child: Container(
                      child: GestureDetector(
                        onTap: (){},
                        child: Text('Registrate aca',
                        style: TextStyle(color: Colors.blue,
                        decoration: TextDecoration.underline), ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  _hidepass(){
    setState(() {
      hidepass=!hidepass;
      passicon=hidepass?Icons.visibility_off:Icons.visibility;
    });
  }
}
