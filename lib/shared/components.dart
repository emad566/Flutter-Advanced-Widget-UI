import 'package:flutter/material.dart';
import 'package:flutter_widget_ui/ui_screens/ui_alert_dialog.dart';
import 'package:flutter_widget_ui/ui_screens/ui_appbar_silver.dart';
import 'package:flutter_widget_ui/ui_screens/ui_carousel_image.dart';
import 'package:flutter_widget_ui/ui_screens/ui_checkbox.dart';
import 'package:flutter_widget_ui/ui_screens/ui_color_picker.dart';
import 'package:flutter_widget_ui/ui_screens/ui_dismissible.dart';
import 'package:flutter_widget_ui/ui_screens/ui_dropdown_button.dart';
import 'package:flutter_widget_ui/ui_screens/ui_expandable_list.dart';
import 'package:flutter_widget_ui/ui_screens/ui_flusher_bar.dart';
import 'package:flutter_widget_ui/ui_screens/ui_google_nav_bar.dart';
import 'package:flutter_widget_ui/ui_screens/ui_image_picker.dart';
import 'package:flutter_widget_ui/ui_screens/ui_inherited_widget_context.dart';
import 'package:flutter_widget_ui/ui_screens/ui_interactive_viewer.dart';
import 'package:flutter_widget_ui/ui_screens/ui_listwhile_scrollview.dart';
import 'package:flutter_widget_ui/ui_screens/ui_marquee.dart';
import 'package:flutter_widget_ui/ui_screens/ui_page_dot_indicator.dart';
import 'package:flutter_widget_ui/ui_screens/ui_page_view.dart';
import 'package:flutter_widget_ui/ui_screens/ui_percent_indicator.dart';
import 'package:flutter_widget_ui/ui_screens/ui_radio_button.dart';
import 'package:flutter_widget_ui/ui_screens/ui_radio_list_tile.dart';
import 'package:flutter_widget_ui/ui_screens/ui_snack_bar.dart';
import 'package:flutter_widget_ui/ui_screens/ui_switch.dart';
import 'package:flutter_widget_ui/ui_screens/ui_textform_field.dart';
import 'package:flutter_widget_ui/ui_screens/ui_toast.dart';

void navigateTo(BuildContext context, Widget screen){
  Navigator.of(context).push(
    MaterialPageRoute(builder: (_) {
      return screen;
    }),
  );
}

void navigateReplaceTo(BuildContext context, Widget screen){
  Navigator.of(context).pushReplacement(
    MaterialPageRoute(builder: (_) {
      return screen;
    }),
  );
}

toggleDrawer(scaffoldKey) async {
  if (scaffoldKey.currentState!.isDrawerOpen) {
    scaffoldKey.currentState!.openEndDrawer();
  } else {
    scaffoldKey.currentState!.openDrawer();
  }
}

List<Widget> listScreens({required scaffoldKey, required Function setState }){
  List<Widget> screens = const [
    UiAlertDialog(),
    UiAppBarSilver(),
    UiCarouselImage(),
    UiCheckbox(),
    UiColorPicker(),
    UiDismissible(),
    UiDropDownButton(),
    UiExpandableList(),
    UiFlushbar(),
    UiGoogleNavbar(),
    UiImagePicker(),
    UiInheritedWidgetContext(),
    UiInteractiveViewer(),
    UiListWhileScrollView(),
    UiMarquee(),
    UiPageDotIndicator(),
    UiPageViewer(),
    UiPercentIndicator(),
    UiRadioButton(),
    UiRadioListTile(),
    UiSnackBar(),
    UiSwitch(),
    UiTextFormField(),
    UiToast(),
  ];

  return screens.map((Widget S){
    return ListTile(
      onTap: (){
        setState(S);
        toggleDrawer(scaffoldKey);
      },
      title: Text(S.toString(), style: const TextStyle(fontSize: 20),),
      trailing: const Icon(Icons.arrow_forward),
    );
  }).toList();
}