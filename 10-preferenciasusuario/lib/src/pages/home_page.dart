import 'package:flutter/material.dart';
import 'package:preferenciasusuario/src/pages/settings_page.dart';
import 'package:preferenciasusuario/src/pages/widgets/widgets.dart';
import 'package:preferenciasusuario/src/share_prefs/preferencias_usuarios.dart';

class HomePage extends StatelessWidget {
  static final String routeName = 'home';
  final prefs = new PreferenciasUsuario();
  @override
  Widget build(BuildContext context) {
    prefs.ultimaPagina = HomePage.routeName;
    return Scaffold(
        appBar: AppBar(
          title: Text('Preferencias de Usuario'),
          backgroundColor: (prefs.colorSecundario) ? Colors.teal : Colors.blue,
        ),
        drawer: MenuWidget(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Color Secundario ${prefs.colorSecundario}'),
            Divider(),
            Text('Genero: ${prefs.genero}'),
            Divider(),
            Text('Nombre Usuario: ${prefs.nombreUsusario}'),
            Divider(),
          ],
        ));
  }
}
