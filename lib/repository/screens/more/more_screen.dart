import 'package:chatapp_ui/domain/constants/app_colors.dart';
import 'package:chatapp_ui/repository/widgets/ui_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  var arrMore = [
    {"icon": Icons.person, "text": "Account"},
    {"icon": CupertinoIcons.chat_bubble_fill, "text": "Appereance"},
    {"icon": Icons.sunny, "text": "Chats"},
    {"icon": Icons.notifications_active, "text": "Noticaion"},
    {"icon": Icons.privacy_tip, "text": "Privacy"},
    {"icon": Icons.folder, "text": "Data Usage"},
    {"icon": Icons.help, "text": "Help"},
    {"icon": Icons.mail, "text": "Invite Your freinds"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: UiHelper.customText(
          context: context,
          text: "More",
          fontSize: 18,
          fontWeight: FontWeight.bold,
          fontFamily: "bold",
        ),
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.scaffoldDark
            : AppColors.scaffoldLight,
      ),
      body: Column(
        children: [
          ListTile(
            leading: Theme.of(context).brightness == Brightness.dark
                ? UiHelper.customImage(imgUrl: "avatar_dark.png")
                : UiHelper.customImage(imgUrl: "avatar_light.png"),
            title: UiHelper.customText(
              text: "Almayra Zamzamy",
              fontSize: 14,
              fontWeight: FontWeight.bold,
              fontFamily: "bold",
              context: context,
            ),
            subtitle: UiHelper.customText(
              text: "+92 3248817986",
              fontSize: 12,
              context: context,
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(CupertinoIcons.forward),
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: arrMore.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(
                    arrMore[index]['icon'] as IconData,
                    color: Theme.of(context).brightness == Brightness.dark
                        ? AppColors.iconDarkMode
                        : AppColors.iconLightMode,
                  ),
                  title: UiHelper.customText(
                    text: arrMore[index]['text'].toString(),
                    fontSize: 14,
                    context: context,
                  ),
                  trailing: Icon(CupertinoIcons.forward),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
