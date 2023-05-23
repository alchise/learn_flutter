Stateful and stateless widgets

Un widget puede ser stateful, o stateless. Si un widget cambia por ejemplo, cuando el usuario interactúa con el es stateful.

Un widget stateless widget. Icon, IconButton, y Text son ejemplos de widgets stateless. Los widgets stateless heredan de la clase StatelessWidget.

Un widget stateful es dinámico: por ejemplo, este puede cambiar su apariencia en respuesta a eventos desencadenados por la intereacción del usuario o cuando recibe datos. Checkbox, Radio, Slider, InkWell, Form, y TextField son ejemplos de widgets stateful. Los widgets stateful heredan de la clase StatefulWidget.

El estado de un widget se alamacena en un objeto State, separando el estado del widget de su apariencia. El estado de un widget consiste en valores que pueden cambiar, como el valor actual de un slider o cuando un checkbox esta marcado como checked. Cuando el estado de un widget cambia, el objeto state llama a setState(), diciendo al framework que repinte el widget.

Un widget stateful es implementado por dos clases:
    una subclase de StatefulWidget y una subclase de State.
    La clase state contiene el estado mutable del widget y el método build().
    Cuando el estado del widget cambia, el objeto state llama a setState(), diciéndole al framework que redibuje el widget.

Implementar un widget stateful personalizado requiere crear dos clases:
    Una subclase de StatefulWidget que define el widget.
    Una subclase de State que contiene el estado para el widget y define el método build().

Nota: Miembros o clases que empiezan con un guión bajo (_) son privados.



# learn_flutter
