import 'package:flutter/material.dart';
import 'package:segunda/edicion/colores.dart';
import 'package:segunda/widgets/Ingresar.dart';
import 'package:segunda/widgets/textfield.dart';

class Iniciar extends StatelessWidget {
  Iniciar({Key? key}) : super(key: key);
  final TextEditingController telefControlador = TextEditingController();
  final TextEditingController contraControlador = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.only(top: 2, left: 25, right: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 35),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'LOGO',
                    style: TextStyle(color: Colores.mainColor,
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                /*const SizedBox(height: 60),
                Text(
                  'Ingresa a tu cuenta',
                  style: TextStyle(color: Colores.colortexto,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),*/

                const SizedBox(height: 45),
                //Ingresar número de teléfono
                Field(controller: telefControlador,
                  text: 'Número telefónico',
                  textInputType: TextInputType.phone,
                  obscure: false,
                ),

                const SizedBox(height: 10),
                //Ingresar contraseña
                Field(controller: contraControlador,
                  text: 'Contraseña',
                  textInputType: TextInputType.text,
                  obscure: true,
                ),
                const SizedBox(height: 30),
                const BotonInicio(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.white,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('¿No tienes una cuenta?',
            ),
            InkWell(
              child: Text(
                  ' Registrarse',
                style: TextStyle(
                  color: Colores.mainColor,
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
