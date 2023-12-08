import 'package:flutter/material.dart';

class popupMenuView extends StatefulWidget {
  const popupMenuView({super.key});

  @override
  State<popupMenuView> createState() => _popupMenuViewState();
}

enum Options { search, upload, copy, exit }

class _popupMenuViewState extends State<popupMenuView> {
  var _popupMenuItemIndex = 0;
  Color _changeColorAccordingToMenuItem = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('popupmenu'),
        actions: [
          PopupMenuButton(
            onSelected: (value) {
              _onMenuItemSelected(value as int);
            },
            itemBuilder: (ctx) => [
              _buildPopupMenuItem('Search', Icons.search, Options.search.index),
              _buildPopupMenuItem('Upload', Icons.upload, Options.upload.index),
              _buildPopupMenuItem('Copy', Icons.copy, Options.copy.index),
              _buildPopupMenuItem('Exit', Icons.exit_to_app, Options.exit.index)
            ],
          )
        ],
      ),
    );
  }

  PopupMenuItem _buildPopupMenuItem(
    String title,
    IconData iconData,
    int position,
  ) {
    return PopupMenuItem(
      child: Row(
        children: [
          Icon(
            iconData,
            color: Colors.black,
          ),
          Text(title),
        ],
      ),
    );
  }

  _onMenuItemSelected(int value) {
    setState(() {
      _popupMenuItemIndex = value;
    });

    if (value == Options.search.index) {
      _changeColorAccordingToMenuItem = Colors.red;
    } else if (value == Options.upload.index) {
      _changeColorAccordingToMenuItem = Colors.green;
    } else if (value == Options.copy.index) {
      _changeColorAccordingToMenuItem = Colors.blue;
    } else {
      _changeColorAccordingToMenuItem = Colors.purple;
    }
  }
}
