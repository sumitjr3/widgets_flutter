/*
2. Container: A basic widget for layout and styling.

3. Text: To display text.

4. Row and Column: For arranging widgets in horizontal and vertical layouts, respectively.

5. ListView: For creating scrollable lists.

6. Card: A material design card with a shadow.

7. Image: To display images.

8. Button widgets: Including FlatButton, RaisedButton, IconButton, and FloatingActionButton for handling user interactions.

9. TextField: For text input.

10. AppBar: The top app bar with an optional action menu.

11. Scaffold: A basic app structure with app bars, drawers, and more.

12. Drawer: For creating navigation drawers.

13. BottomNavigationBar: A navigation bar at the bottom of the screen.

14. TabBar and TabBarView: For implementing tabbed interfaces.

15. PopupMenuButton: For displaying pop-up menus.

16. AlertDialog and SimpleDialog: For showing dialogs.

17. MaterialApp: The root widget for a Material Design application.

18. GestureDetector: For handling gestures like taps, swipes, and more.

19. ListView.builder: An efficient way to create dynamic lists.

20. GridView: For creating grid layouts.

21. ExpansionTile: A widget for creating expandable/collapsible list items.

22. Stack and Positioned: For stacking and positioning widgets.

23. ClipRRect and ClipOval: For clipping widgets into rounded rectangles and ovals.

24. Hero: For creating hero animations when transitioning between screens.

25. Wrap: A layout widget that arranges its children in multiple rows or columns.

26. InkWell: A material design ink splash effect for touch interaction.

27. Spacer: For adding empty space between widgets.

28. FlutterLogo: A widget to display the Flutter logo.

29. Spacer: A widget to add empty space between widgets.

30. InkBar: A material design ink bar for indicating selection.

31. NotificationListener: For handling notifications from descendant widgets.

32. AnimatedContainer: For animating container properties.

33. FutureBuilder and StreamBuilder: For working with asynchronous data.

34. PageView: For creating swipeable pages.

35. ClipPath: For creating custom clipping shapes.

36. ClipRect: For creating custom rectangular clips.

37. CustomPaint: For custom painting and drawing.

38. RichText: For displaying rich text with different styles.

39. SliverAppBar and SliverList: For creating custom scrollable app bars and lists.
 */

import 'package:flutter/material.dart';
import 'package:widgets_flutter/constants/routes.dart';
import 'package:widgets_flutter/views/Container.dart';
import 'package:widgets_flutter/views/ListView/listviewBuilder.dart';
import 'package:widgets_flutter/views/ListView/listviewSeperator.dart';
import 'package:widgets_flutter/views/ListView/staticList.dart';
import 'package:widgets_flutter/views/RowsAndColumn.dart';
import 'package:widgets_flutter/views/Text.dart';
import 'package:widgets_flutter/views/animated_container.dart';
import 'package:widgets_flutter/views/appbarView.dart';
import 'package:widgets_flutter/views/bottomNavigationView.dart';
import 'package:widgets_flutter/views/buttonView.dart';
import 'package:widgets_flutter/views/cardview/cardView.dart';
import 'package:widgets_flutter/views/cardview/cardinlist.dart';
import 'package:widgets_flutter/views/cardview/simplecard.dart';
import 'package:widgets_flutter/views/dialog.dart';
import 'package:widgets_flutter/views/formfields/fields_drop_down.dart';
import 'package:widgets_flutter/views/formfields/form_fields.dart';
import 'package:widgets_flutter/views/gestureDetector.dart';
import 'package:widgets_flutter/views/gridView.dart';
import 'package:widgets_flutter/views/hero_animation.dart';
import 'package:widgets_flutter/views/hero_detailed.dart';
import 'package:widgets_flutter/views/imageView.dart';
import 'package:widgets_flutter/views/inkwellWidget.dart';
import 'package:widgets_flutter/views/listView.dart';
import 'package:widgets_flutter/views/page_view.dart';
import 'package:widgets_flutter/views/popupMenuView.dart';
import 'package:widgets_flutter/views/TabBar/tabBarView.dart';
import 'package:widgets_flutter/views/richText.dart';
import 'package:widgets_flutter/views/sliver_appbar.dart';
import 'package:widgets_flutter/views/textfield.dart';
import 'package:widgets_flutter/views/wrapWidget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MaterialApp(
    title: 'demo',
    theme: ThemeData(
      primarySwatch: Colors.cyan,
    ),
    home: const HomePage(),
    routes: {
      mainActivityRoute: (context) => const HomePage(),
      ContainerRoute: (context) => const ContainerView(),
      TextRoute: (context) => const TextView(),
      RowsAndColumnRoute: (context) => const RowsAndColumn(),
      listViewRoute: (context) => const ListViewActivity(),
      staticListRoute: (context) => const staticList(),
      listviewBuilderRoute: (context) => const ListViewBuilder(),
      listviewSeperatorRoute: (context) => const ListViewSeperator(),
      cardViewRoute: (context) => const cardView(),
      simpleCardRoute: (context) => const simpleCard(),
      cardInListRoute: (context) => const cardInList(),
      imageViewRoute: (context) => const imageView(),
      buttonViewRoute: (context) => const buttonView(),
      textfieldViewRoute: (context) => const textfieldView(),
      appbarViewRoute: (context) => const appbarView(),
      BottomNavigationBarRoute: (context) => const BottomNavigationView(),
      popupMenuViewRoute: (context) => const popupMenuView(),
      tabBarViewRoute: (context) => const tabBarView(),
      dialogRoute: (context) => const dialogView(),
      gestureDetectorViewRoute: (context) => const gestureDetectorView(),
      gridViewRoute: (context) => const gridView(),
      richTextViewRoute: (context) => const rich_text_view(),
      wrapWidgetViewRoute: (context) => const wrapWidgetView(),
      inkWellWidgetRoute: (context) => const inkWellWidget(),
      hero_animation_viewRoute: (context) => const hero_animation_view(),
      hero_detailed_screenRoute: (context) => const hero_detailed_screen(),
      animated_containerRoute: (context) => const animated_container(),
      sliver_appbarRoute: (context) => const sliver_appbar(),
      page_viewRoute: (context) => const page_view(),
      formFieldRoute: (context) => const DropDownFields(),
    },
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> item = [
    'Container',
    'Text',
    'Row and Column',
    'ListView',
    'Card',
    'Image',
    'Button Widgets',
    'TextField',
    'AppBar',
    'Scaffold',
    'Drawer',
    'Bottom Navigation Bar',
    'TabBar and TabBar View',
    'PopUp Menu Button',
    'AlertDialog and SimpleDialog',
    'GestureDetector',
    'GridView',
    'ExpansionTitle',
    'Stack and Positioned',
    'ClipRRect and ClipOval',
    'Hero',
    'Wrap',
    'Inkwell',
    'Spacer',
    'InkBar',
    'Notification Listener',
    'Animated Container',
    'FutureBuilder and StreamBuilder',
    'Page View',
    'RichText',
    'SliverAppBar and SliverList',
    'form fields'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: ListView.builder(
        itemCount: item.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(item[index]),
            onTap: () {
              if (item[index] == 'Container') {
                Navigator.pushNamed(context, ContainerRoute);
              }
              if (item[index] == 'Text') {
                Navigator.of(context).pushNamed(TextRoute);
              }
              if (item[index] == 'Row and Column') {
                Navigator.of(context).pushNamed(RowsAndColumnRoute);
              }
              if (item[index] == 'ListView') {
                Navigator.of(context).pushNamed(listViewRoute);
              }
              if (item[index] == 'Card') {
                Navigator.of(context).pushNamed(cardViewRoute);
              }
              if (item[index] == 'Image') {
                Navigator.of(context).pushNamed(imageViewRoute);
              }
              if (item[index] == 'Button Widgets') {
                Navigator.of(context).pushNamed(buttonViewRoute);
              }
              if (item[index] == 'TextField') {
                Navigator.of(context).pushNamed(textfieldViewRoute);
              }
              if (item[index] == 'AppBar' || item[index] == 'Drawer') {
                Navigator.of(context).pushNamed(appbarViewRoute);
              }
              if (item[index] == 'Bottom Navigation Bar') {
                Navigator.of(context).pushNamed(BottomNavigationBarRoute);
              }
              if (item[index] == 'PopUp Menu Button') {
                Navigator.of(context).pushNamed(popupMenuViewRoute);
              }
              if (item[index] == 'TabBar and TabBar View') {
                Navigator.of(context).pushNamed(tabBarViewRoute);
              }
              if (item[index] == 'AlertDialog and SimpleDialog') {
                Navigator.of(context).pushNamed(dialogRoute);
              }
              if (item[index] == 'GestureDetector') {
                Navigator.of(context).pushNamed(gestureDetectorViewRoute);
              }
              if (item[index] == 'GridView') {
                Navigator.of(context).pushNamed(gridViewRoute);
              }
              if (item[index] == 'RichText') {
                Navigator.of(context).pushNamed(richTextViewRoute);
              }
              if (item[index] == 'Wrap') {
                Navigator.of(context).pushNamed(wrapWidgetViewRoute);
              }
              if (item[index] == 'Inkwell') {
                Navigator.of(context).pushNamed(inkWellWidgetRoute);
              }
              if (item[index] == 'Hero') {
                Navigator.of(context).pushNamed(hero_animation_viewRoute);
              }
              if (item[index] == 'Animated Container') {
                Navigator.of(context).pushNamed(animated_containerRoute);
              }
              if (item[index] == 'SliverAppBar and SliverList') {
                Navigator.of(context).pushNamed(sliver_appbarRoute);
              }
              if (item[index] == 'Page View') {
                Navigator.of(context).pushNamed(page_viewRoute);
              }
              if (item[index] == 'form fields') {
                Navigator.of(context).pushNamed(formFieldRoute);
              }
            },
          );
        },
      ),
    );
  }
}
