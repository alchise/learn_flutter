import 'package:flutter/material.dart';

import 'dart:ui' as ui;


class TextWidget extends StatelessWidget {
  const TextWidget({super.key});
  final _name = 'Alex';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Text Widget',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          // Text: Una línea de texto con un solo estilo.
          const Text(
            'Hello,How are you?',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const Divider(
            height: 10,
            thickness: 1,
            indent: 2,
            endIndent: 2,
            color: Colors.orange,
          ),
          // Texto con insercion de una variable
          Text(
            'Hello, $_name! How are you?',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const Divider(
            height: 10,
            thickness: 1,
            indent: 2,
            endIndent: 2,
            color: Colors.orange,
          ),
          /* RichText: El widget RichText muestra texto que usa múltiples estilos diferentes. El texto para mostrar se describe utilizando un árbol de objetos TextSpan,cada uno de los cuales tiene un estilo asociado que se utiliza para ese subárbol. El texto puede dividirse en varias líneas o puede que se muestren todos en la misma línea, dependiendo de las restricciones del layout */
          const Text.rich(
            TextSpan(
              text: 'Hello', // default text style
              children: <TextSpan>[
                TextSpan(
                    text: ' beautiful ',
                    style:
                        TextStyle(fontStyle: FontStyle.italic, fontSize: 24)),
                TextSpan(
                    text: 'world',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            textAlign: TextAlign.center,
          ),
          const Divider(
            height: 10,
            thickness: 1,
            indent: 2,
            endIndent: 2,
            color: Colors.orange,
          ),
          /* maxLines: Un número máximo opcional de líneas para que el texto abarque, ajustando si es necesario. Si el texto excede el número de líneas indicado, se truncará de acuerdo con a desbordar. Si es 1, el texto no se ajustará. De lo contrario, el texto se ajustará en el borde de la caja. */
          const Text(
            'Texto en maximo 2 lineas, el texto sobrabte se trunca,Texto en maximo 2 lineas, el texto sobrabte se trunca, Texto en maximo 2 lineas, el texto sobrabte se trunca, Texto en maximo 2 lineas, el texto sobrabte se trunca, Texto en maximo 2 lineas, el texto sobrabte se trunca.',
            textAlign: TextAlign.center,
            style: TextStyle(fontStyle: FontStyle.italic, fontSize: 18),
            maxLines: 2,
            overflow: TextOverflow.fade, // Text degradado
          ),
          const Divider(
            height: 10,
            thickness: 1,
            indent: 2,
            endIndent: 2,
            color: Colors.orange,
          ),
          /* overflow: propiedad de Text, RichText y DefaultTextStyle especifica cómo se debe señalar al usuario el contenido desbordado que no se muestra. Se puede recortar, mostrar puntos suspensivos (tres puntos), desvanecerse o desbordarse fuera de su widget principal.  */
          const Text(
              'Texto en maximo 2 lineas, el texto sobrabte se trunca,Texto en maximo 2 lineas, el texto sobrabte se trunca, Texto en maximo 2 lineas, el texto sobrabte se trunca, Texto en maximo 2 lineas, el texto sobrabte se trunca, Texto en maximo 2 lineas, el texto sobrabte se trunca.',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal,
                  fontSize: 18,
                  color: Colors.blue),
              maxLines: 2,
              overflow: TextOverflow.clip), // Text fijo al container
          const Divider(
            height: 10,
            thickness: 1,
            indent: 2,
            endIndent: 2,
            color: Colors.orange,
          ),
          const Text(
              'Texto en maximo 2 lineas, el texto sobrabte se trunca,Texto en maximo 2 lineas, el texto sobrabte se trunca, Texto en maximo 2 lineas, el texto sobrabte se trunca, Texto en maximo 2 lineas, el texto sobrabte se trunca, Texto en maximo 2 lineas, el texto sobrabte se trunca.',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontStyle: FontStyle.italic, fontSize: 18, color: Colors.red),
              maxLines: 2,
              overflow: TextOverflow.ellipsis),
          const Divider(
            height: 10,
            thickness: 1,
            indent: 2,
            endIndent: 2,
            color: Colors.orange,
          ),
          const Text(
              'Texto en maximo 2 lineas, el texto sobrabte se trunca,Texto en maximo 2 lineas, el texto sobrabte se trunca, Texto en maximo 2 lineas, el texto sobrabte se trunca, Texto en maximo 2 lineas, el texto sobrabte se trunca, Texto en maximo 2 lineas, el texto sobrabte se trunca.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: Colors.black),
              maxLines: 2,
              overflow: TextOverflow.visible),
          const Divider(
            height: 10,
            thickness: 1,
            indent: 2,
            endIndent: 2,
            color: Colors.orange,
          ),

          /* semanticsLabel: Una etiqueta semántica alternativa para este texto. Si está presente, la semántica de este widget contendrá este valor en su lugar del texto real. Esto sobrescribirá cualquiera de las etiquetas semánticas aplicadas.  directamente al TextSpan. Esto es útil para reemplazar abreviaturas o abreviaturas con el nombre completo valor de texto:  */
          const Text(
            r'$$',
            semanticsLabel: 'Double dollars',
            textAlign: TextAlign.center,
          ),
          const Divider(
            height: 10,
            thickness: 1,
            indent: 2,
            endIndent: 2,
            color: Colors.orange,
          ),

          /* softWrap: Si el texto debe dividirse en saltos de línea suaves.Si es falso, los glifos en el texto se colocarán como si hubiera un espacio horizontal ilimitado. */
          const Text(
            'Texto en maximo 2 lineas, el texto sobrabte se trunca,Texto en maximo 2 lineas, el texto se trunca, Texto en maximo 2 lineas, el texto se trunca, Texto en maximo 2 lineas, el texto sobrabte se trunca, Texto en maximo 2 lineas, el texto sobrabte se trunca.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, color: Colors.black),
            maxLines: 2,
            softWrap: false,
            overflow: TextOverflow.fade,
          ),
          const Divider(
            height: 10,
            thickness: 1,
            indent: 2,
            endIndent: 2,
            color: Colors.orange,
          ),
          /* strutStyle: Define el puntal, que establece la altura mínima que puede tener una línea en relación con la línea de base. Strut se aplica a todas las líneas del párrafo. Strut es una característica que permite establecer alturas mínimas de línea. El efecto es como si un cero El espacio de ancho se incluyó al comienzo de cada línea en el párrafo. Este espacio imaginario está 'formado' según las propiedades definida en esta clase. El puntal de Flutter se basa en puntal de composición tipográfica de línea de CSS altura.  */
          const Text(
            'Et proident commodo minim commodo ex qui excepteur pariatur. Sint aliqua exercitation non eiusmod id tempor cupidatat cupidatat. Veniam aute minim ',
            style: TextStyle(
              fontSize: 12,
              fontFamily: 'Roboto',
            ),
            strutStyle: StrutStyle(
              fontFamily: 'Roboto',
              fontSize: 24,
              height: 0.5,
              leading: 1,
            ),
          ),
          const Divider(
            height: 10,
            thickness: 1,
            indent: 2,
            endIndent: 2,
            color: Colors.orange,
          ),
          const Text(
            'Est reprehenderit consectetur commodo eiusmod sunt ut ad voluptate deserunt. Amet aliquip non deserunt exercitation minim. Aliquip culpa officia est ',
            style: TextStyle(
              fontSize: 12,
              fontFamily: 'Roboto',
            ),
            strutStyle: StrutStyle(
              fontFamily: 'Roboto',
              fontSize: 24,
              height: 1.5,
              leading: 1,
            ),
          ),
          const Divider(
            height: 10,
            thickness: 1,
            indent: 2,
            endIndent: 2,
            color: Colors.orange,
          ),
          const Text(
            'Magna ullamco duis laborum voluptate culpa fugiat reprehenderit voluptate eu excepteur dolor. Reprehenderit sunt non esse duis consequat. Non ullamco et .',
            style: TextStyle(
              fontSize: 12,
              fontFamily: 'Roboto',
            ),
            strutStyle: StrutStyle(
              fontFamily: 'Roboto',
              fontSize: 24,
              height: 2.5,
              leading: 1,
            ),
          ),
          const Divider(
            height: 10,
            thickness: 1,
            indent: 2,
            endIndent: 2,
            color: Colors.orange,
          ),
          /* Textstyle: Color y opacidad */
          RichText(
            text: TextSpan(
              style: const TextStyle(fontSize: 20),
              children: <TextSpan>[
                TextSpan(
                  text: "You don't have the votes.\n",
                  style: TextStyle(color: Colors.blue.withOpacity(0.6)),
                ),
                TextSpan(
                  text: "You don't have the votes.\n",
                  style: TextStyle(
                      color: Colors.blue.withOpacity(0.8),
                      fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: "You don't have the votes.\n",
                  style: TextStyle(
                      color: Colors.blue.withOpacity(1.0),
                      fontStyle: FontStyle.italic),
                ),
              ],
            ),
          ),
          const Divider(
            height: 10,
            thickness: 1,
            indent: 2,
            endIndent: 2,
            color: Colors.orange,
          ),
          /* Textstyle: Diseño en capas */
          Stack(
            children: <Widget>[
              // Stroked text as border.
              Text(
                'Greetings, planet!',
                style: TextStyle(
                  fontSize: 40,
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 6
                    ..color = Colors.blue[700]!,
                ),
              ),
              // Solid text as fill.
              Text(
                'Greetings, planet!',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.grey[300],
                ),
              ),
            ],
          ),
          const Divider(
            height: 10,
            thickness: 1,
            indent: 2,
            endIndent: 2,
            color: Colors.orange,
          ),
          /* Textstyle: Color de texto en gradiente */
          Text(
            'Greetings, planet!',
            style: TextStyle(
                fontSize: 40,
                foreground: Paint()
                  ..shader = ui.Gradient.linear(
                    const Offset(0, 20),
                    const Offset(150, 20),
                    <Color>[
                      Colors.red,
                      Colors.yellow,
                    ],
                  )),
          ),
          const Divider(
            height: 10,
            thickness: 1,
            indent: 2,
            endIndent: 2,
            color: Colors.orange,
          ),
          /* Textstyle: En este ejemplo, el DefaultTextStyle se manipula explícitamente para obtener un TextStyle que duplique el tamaño de fuente predeterminado.  */
          Text(
            "These are wise words, enterprising men quote 'em.",
            style:
                DefaultTextStyle.of(context).style.apply(fontSizeFactor: 0.5),
          ),
          const Divider(
            height: 10,
            thickness: 1,
            indent: 2,
            endIndent: 2,
            color: Colors.orange,
          ),
          /* Textstyle: La altura se puede utilizar para cambiar la altura de la línea. Aquí, la línea la altura se establece en 2 veces el tamaño de la fuente, por lo que el texto está muy espaciado. Desde el fontSizese establece en 20, la altura final de la línea es 40 píxeles  */
          const Text(
            'Ladies and gentlemen, you coulda been anywhere in the world tonight, but you’re here with us in New York City.',
            style: TextStyle(height: 2, fontSize: 20),
          ),
          const Divider(
            height: 10,
            thickness: 1,
            indent: 2,
            endIndent: 2,
            color: Colors.orange,
          ),
          /* TextStyle - TextSpan: Los estilos se pueden combinar. En este ejemplo, la palabra mal escrita se dibuja en texto negro y subrayado con una línea roja ondulada para indicar un error ortográfico. (El resto tiene un estilo de acuerdo con los estilos de texto predeterminados de Flutter, no ambiental DefaultTextStyle , ya que no se proporciona un estilo explícito y RichText no usa automáticamente el DefaultTextStyle ).  */
          RichText(
            text: const TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: "Don't tax the South ",
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
                TextSpan(
                  text: 'cuz',
                  style: TextStyle(
                    color: Colors.black,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.red,
                    decorationStyle: TextDecorationStyle.wavy,
                  ),
                ),
                TextSpan(
                  text: ' we got it made in the shade',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            height: 10,
            thickness: 1,
            indent: 2,
            endIndent: 2,
            color: Colors.orange,
          ),

          /* Fonts Flutter */
          RichText(
            text: const TextSpan(
              children: <TextSpan>[
                TextSpan(
                    text: "Este texto es de la familia Roboto.\n",
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    )),
                TextSpan(
                    text: "Este texto es de la familia Slabo_27px.\n",
                    style: TextStyle(
                      fontFamily: 'Slabo_27px',
                      color: Colors.red,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    )),
                TextSpan(
                  text: "Este texto es de la familia Raleway.\n",
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    color: Colors.blue,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: "Este texto es de la familia Gloria_Hallelujah.\n",
                  style: TextStyle(
                    fontFamily: 'Gloria_Hallelujah',
                    color: Colors.blue,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
