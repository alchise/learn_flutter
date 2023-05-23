import 'package:flutter/material.dart';

/* Un Card, de la biblioteca Material, contiene fragmentos relacionados de información y puede ser compuesto por casi cualquier widget, pero es a menudo usado con ListTile. Card tiene un solo hijo, pero su hijo puede ser una columna, fila, lista, cuadrícula, o otro widget que soporte múltiples hijos. Por defecto, un Card encoje su tamaño a 0 por 0 píxeles. Puedes usar SizedBox para restringir el tamaño de un card.

En Flutter, un Card tiene como característica esquinas ligeramente redondeadas y una sombra arrojada, dándole a este un efecto 3D. Cambiar la propiedad elevation de un Card te permite contolar el efecto de sombra arrojada. Configurando la elevación a 24, por ejemplo, visualmente eleva el Card de la superficie y causa que la sombra se vuelva más dispersa. Para una lista de valores permitidos de elevación, mira Elevation en las Material guidelines. Especificar un valor no soportado desactiva completamente la sombra arrojada.
Resumen (Card)

    Implementa un Material card
    Usado para repesentar fragementos relacionados de información
    Acepta un úncio hijo, pero este hijo puede ser un Row, Column, o otro widget que albergue una lista de hijos
    Mostrado con escquinas redondeadas y arroja una sombra
    El contenido de un Card no puede hacer scroll
    De la biblioteca Material
 */
class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card Widget'),
          centerTitle: true,
        ),
        body: Center(child: _buildCard()));
  }

  // #docregion Card
  Widget _buildCard() => SizedBox(
        height: 250,
        child: Card(
          child: Column(
            children: [
              ListTile(
                title: const Text('1625 Main Street',
                    style: TextStyle(fontWeight: FontWeight.w500)),
                subtitle: const Text('My City, CA 99984'),
                leading: Icon(
                  Icons.restaurant_menu,
                  color: Colors.blue[500],
                ),
              ),
              const Divider(),
              ListTile(
                title: const Text('(408) 555-1212',
                    style: TextStyle(fontWeight: FontWeight.w500)),
                leading: Icon(
                  Icons.contact_phone,
                  color: Colors.blue[500],
                ),
              ),
              const Divider(),
              ListTile(
                title: const Text('costa@example.com'),
                leading: Icon(
                  Icons.contact_mail,
                  color: Colors.blue[500],
                ),
              ),
            ],
          ),
        ),
      );
  // #enddocregion Car

}
