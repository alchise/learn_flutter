import 'package:conociendo_a_flutter/pages/animated3.dart';
import 'package:conociendo_a_flutter/pages/card_widget.dart';
import 'package:conociendo_a_flutter/pages/column_widget.dart';
import 'package:conociendo_a_flutter/pages/dropdownbutton_widget.dart';
import 'package:conociendo_a_flutter/pages/floating_action_button.dart';
import 'package:conociendo_a_flutter/pages/form_class.dart';
import 'package:conociendo_a_flutter/pages/getx2/main_getx2.dart';
import 'package:conociendo_a_flutter/pages/gridview_advanced.dart';
import 'package:conociendo_a_flutter/pages/gridview_widget.dart';
import 'package:conociendo_a_flutter/pages/hola_mundo.dart';
import 'package:conociendo_a_flutter/pages/iconbutton_widget.dart';
import 'package:conociendo_a_flutter/pages/layouts_flutter.dart';
import 'package:conociendo_a_flutter/pages/material_components.dart';
import 'package:conociendo_a_flutter/pages/checkbox_widget.dart';
import 'package:conociendo_a_flutter/pages/navegar_a_rutas_con_nombre.dart';
import 'package:conociendo_a_flutter/pages/parent_adm_estado.dart';
import 'package:conociendo_a_flutter/pages/practica_statefulwidget.dart';
import 'package:conociendo_a_flutter/pages/radiolisttile_widget.dart';
import 'package:conociendo_a_flutter/pages/row_widget.dart';
import 'package:conociendo_a_flutter/pages/slider_widget.dart';
import 'package:conociendo_a_flutter/pages/stack_widget.dart';
import 'package:conociendo_a_flutter/pages/switch_widget.dart';
import 'package:conociendo_a_flutter/pages/text_widget.dart';
import 'package:conociendo_a_flutter/pages/textfield_widget.dart';
import 'package:conociendo_a_flutter/pages/tutorial_layout.dart';
import 'package:conociendo_a_flutter/pages/tutorial_layout_interactividad.dart';
import 'package:conociendo_a_flutter/pages/widget_adm_estado.dart';
import 'package:flutter/material.dart';
import '../pages/animated1.dart';
import '../pages/animated2.dart';
import '../pages/animated4.dart';
import '../pages/animated5.dart';
import '../pages/counter_provider.dart';
import '../pages/devolver_de_pantalla.dart';
import '../pages/enviar_a_pantalla.dart';
import '../pages/getx1/main_getx1.dart';
import '../pages/hero_widget_1.dart';
import '../pages/hero_widget_2.dart';
import '../pages/hero_widget_3.dart';
import '../pages/navigator.dart';
import '../pages/provider1/text_provider1.dart';

Map<String, WidgetBuilder> getRoutes() {
  return <String, WidgetBuilder>{
    '/hola_mundo': (context) => const HolaMundo(),
    '/text_widget': (context) => const TextWidget(),
    '/row_widget': (context) => const RowWidget(),
    '/column_widget': (context) => const ColumnWidget(),
    '/stack_widget': (context) => StackWidget(),
    '/material_components': (context) => const MaterialComponents(),
    '/layouts_flutter': (context) => const LayoutsFlutter(),
    '/gridview_widget': (context) => const GridViewWidget(),
    '/gridview_advanced': (context) => const GridViewAdvanced(),
    '/card_widget': (context) => const CardWidget(),
    '/tutorial_layout': (context) => const TutorialLayout(),
    '/tutorial_layout_interactividad': (context) =>
        const TutorialLayoutInteractivo(),
    '/practica_statefulwidget': (context) => const PracticaStatefulWidget(),
    '/widget_adm_estado': (context) => const WidgetAdmEstado(),
    '/parent_adm_estado': (context) => const ParentAdmEstado(),
    '/form_class': (context) => const FormWidget(),
    '/checkbox_widget': (context) => const CheckboxWidget(),
    '/dropdownbutton_widget': (context) => const DropdownButtonWidget(),
    '/floating_action_button': (context) => const FABejemplo(),
    '/iconbutton_widget': (context) => const MyIconButtonWidget(),
    '/radiolisttile_widget': (context) => const MyRadioListTile(),
    '/slider_widget': (context) => const MySliderWidget(),
    '/switch_widget': (context) => const MySwitchWidget(),
    '/textfield_widget': (context) => const MyTextFieldWidget(),
    '/navigator': (context) => const MyNavigator(),
    '/enviar_a_pantalla': (context) => const TodosScreen(todos: []),
    '/devolver_de_pantalla': (context) => const HomeScreen(),
    '/navegar_a_rutas_con_nombre': (context) => const MyRutas(),
    '/hero_widget_1': (context) => const HeroApp1(),
    '/hero_widget_2': (context) => const HeroApp2(),
    '/hero_widget_3': (context) => const HeroApp3(),
    '/animated1': (context) => const LogoApp(),
    '/animated2': (context) => const LogoApp2(),
    '/animated3': (context) => const LogoApp3(),
    '/animated4': (context) => const LogoApp4(),
    '/animated5': (context) => const LogoApp5(),
    '/counter_provider': (context) => const MyApp(),
    '/text_provider1': (context) => const MyTextProvider1(),
    '/main_getx1': (context) => const MyAppGetX1(),
    '/main_getx2': (context) => const MyAppGetx2(),
  };
}
