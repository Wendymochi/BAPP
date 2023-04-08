import 'package:flutter/material.dart';
import 'package:segunda/widgets/Ingresar.dart';
import 'package:segunda/widgets/Verificar.dart';
import 'package:segunda/widgets/textfield.dart';


class registro extends StatelessWidget {
  registro({Key? key}) : super(key: key);
  final TextEditingController telefonoControlador = TextEditingController();


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
                const SizedBox(height: 70),
                Container(
                  alignment: Alignment.center,
                  child: const Text(
                    'Para registrarse, vamos a ingresar su número de teléfono!',
                    style: TextStyle(color: Colors.black,
                      fontSize: 20,
                      //fontWeight: FontWeight.,
                    ),
                  ),
                ),

                const SizedBox(height: 45),
                //Ingresar número de teléfono
                Field(controller: telefonoControlador,
                  text: 'Número telefónico',
                  textInputType: TextInputType.phone,
                  obscure: false,
                ),


                const SizedBox(height: 40),
                const verificar(),
              ],
            ),
          ),
        ),
      ),

     /* bottomNavigationBar: Container(
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
      ),*/
    );
  }
}

