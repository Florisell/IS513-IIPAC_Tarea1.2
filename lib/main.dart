import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Mi primer app',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double alturapantalla = MediaQuery.of(context).size.height;
    double anchopantalla= MediaQuery.of(context).size.width;
    double altura=MediaQuery.of(context).size.height;
    double ancho =MediaQuery.of(context).size.width;
    double escalaaltura = alturapantalla /altura;
    double escalaancho = anchopantalla/ ancho;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text(
          'Cuenta de Google',
          style: TextStyle(color: Colors.indigo[100]),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(12.0 * escalaaltura),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Tu cuenta está protegida',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16 * escalaaltura,
                ),
              ),
              SizedBox(height: 13.0 * escalaaltura),
              Row(
                children: [
                  SizedBox(
                    width: 250 * escalaancho,
                    child: Text(
                      'La verificación de seguridad revisó tu cuenta y no encontró acciones recomendadas',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 14 * escalaaltura,
                      ),
                    ),
                  ),
                  SizedBox(width: 50.0 * escalaancho),
                  Icon(Icons.verified_user, size: 50.0 * escalaaltura, color: Colors.green),
                ],
              ),
              SizedBox(height: 12.0 * escalaaltura),
              TextButton(
                onPressed: null,
                child: Text(
                  'Ver detalles',
                  style: TextStyle(
                    color: const Color.fromRGBO(0, 0, 255, 1),
                    fontSize: 14 * escalaaltura,
                  ),
                ),
              ),
              SizedBox(height: 13.0 * escalaaltura),
              Text(
                'Verificación de privacidad',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16 * escalaaltura,
                ),
              ),
              SizedBox(height: 13.0 * escalaaltura),
              Row(
                children: [
                  SizedBox(
                    width: 280 * escalaancho,
                    child: Text(
                      'Elige la configuración de privacidad indicada para ti con esta guia paso a paso.',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 14 * escalaaltura,
                      ),
                    ),
                  ),
                  SizedBox(width: 25.0 * escalaancho),
                  Icon(Icons.privacy_tip, size: 50.0 * escalaaltura, color: const Color.fromRGBO(0, 0, 255, 1)),
                ],
              ),
              SizedBox(height: 13.0 * escalaaltura),
              TextButton(
                onPressed: null,
                child: Text(
                  'Realizar la verificación de privacidad',
                  style: TextStyle(
                    color: const Color.fromRGBO(0, 0, 255, 1),
                    fontSize: 14 * escalaaltura,
                  ),
                ),
              ),
              SizedBox(height: 15.0 * escalaaltura),
              Text(
                '¿Buscas otra información?',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16 * escalaaltura,
                ),
              ),
              SizedBox(height: 3.0 * escalaaltura),
              Row(
                children: [
                  Icon(
                    Icons.search,
                    size: 15 * escalaaltura,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 2.0 * escalaancho),
                  SizedBox(
                    width: 280 * escalaancho,
                    child: Text(
                      'Buscar en la cuenta de google',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 15 * escalaaltura,
                      ),
                    ),
                  ),
                  SizedBox(width: 13.0 * escalaancho),
                  IconButton(onPressed: null, icon: Icon(Icons.arrow_forward_ios, size: 15.0 * escalaaltura, color: Colors.grey)),
                ],
              ),
              SizedBox(height: 1.0 * escalaaltura),
              Row(
                children: [
                  Icon(
                    Icons.question_mark,
                    size: 15 * escalaaltura,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 2.0 * escalaancho),
                  SizedBox(
                    width: 280 * escalaancho,
                    child: Text(
                      'Ver las opciones de ayuda',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 15 * escalaaltura,
                      ),
                    ),
                  ),
                  SizedBox(width: 15.0 * escalaancho),
                  IconButton(onPressed: null, icon: Icon(Icons.arrow_forward_ios, size: 15.0 * escalaaltura, color: Colors.grey)),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.comment,
                    size: 15 * escalaaltura,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 2.0 * escalaancho),
                  SizedBox(
                    width: 280 * escalaancho,
                    child: Text(
                      'Enviar Comentarios',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 15 * escalaaltura,
                      ),
                    ),
                  ),
                  SizedBox(width: 15.0 * escalaancho),
                  IconButton(onPressed: null, icon: Icon(Icons.arrow_forward_ios, size: 15.0 * escalaancho, color: Colors.grey)),
                ],
              ),
  Row(
  children: [
    Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Solo tu puedes ver la configuracion. Tambien puedes revisar la configuracion de Maps, la Busqueda o cualquier servicio de Google que uses con frecuencia. Google protege la privacidad y la seguridad de los datos.',
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 14 * escalaaltura,
              color: Colors.black,
            ),
          ),
          TextButton.icon(
            onPressed:null ,
            label: Text(
              'Más información',
              style: TextStyle(
                color: const Color.fromRGBO(0, 0, 255, 1),
                fontSize: 14 * escalaaltura,
              ),
            ),
            icon: Icon(
              Icons.help_outline,
              size: 14 * escalaaltura,
              color: const Color.fromRGBO(0, 0, 255, 1),
            ),
          ),
        ],
      ),
    ),
    SizedBox(width: 21.0 * escalaancho),
    Icon(
      Icons.privacy_tip,
      size: 45.0 * escalaaltura,
      color: const Color.fromRGBO(0, 0, 255, 1),
    ),
  ],
),
            ],
          ),
        ),
      ),
    );
  }
}