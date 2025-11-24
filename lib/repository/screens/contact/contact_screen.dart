import 'package:chatapp_ui/repository/widgets/ui_helper.dart';
import 'package:flutter/material.dart';
import '../../../domain/constants/app_colors.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  TextEditingController searchController = TextEditingController();
  var arrayContacts = [
    {
      "img": "Frame 3293.png",
      "name": "Athalia Putri",
      "lastSeen": "Last seen yesterday",
    },
    {
      "img": "Frame 3293 (1).png",
      "name": "Erlan Sadewa",
      "lastSeen": "Online",
    },
    {
      "img": "Frame 3293 (2).png",
      "name": "Midala Huera",
      "lastSeen": "Last seen 3 hours ago",
    },
    {
      "img": "Frame 3293 (3).png",
      "name": "Nafisa Gitari",
      "lastSeen": "Online",
    },
    {"img": "Frame 3293 (4).png", "name": "Raki Devon", "lastSeen": "Online"},
    {
      "img": "Frame 3293 (5).png",
      "name": "Salsabila Akira",
      "lastSeen": "Last seen 30 minutes ago",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: UiHelper.customText(
          context: context,
          text: "Contacts",
          fontSize: 18,
          fontWeight: FontWeight.bold,
          fontFamily: "bold",
        ),
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.scaffoldDark
            : AppColors.scaffoldLight,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 30),
            UiHelper.customTextField(
              controller: searchController,
              text: "Search",
              textInputType: TextInputType.text,
              context: context,
              iconData: Icons.search,
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: arrayContacts.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: ListTile(
                      leading: UiHelper.customImage(
                        imgUrl: arrayContacts[index]['img'].toString(),
                      ),
                      title: UiHelper.customText(
                        text: arrayContacts[index]['name'].toString(),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        context: context,
                      ),
                      subtitle: UiHelper.customText(
                        text: arrayContacts[index]['lastSeen'].toString(),
                        fontSize: 12,
                        color: Color(0XFFADB5BD),
                        context: context,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
