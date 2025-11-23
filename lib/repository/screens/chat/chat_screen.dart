import 'package:flutter/material.dart';
import '../../../domain/constants/app_colors.dart';
import '../../widgets/ui_helper.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    var arrChats = [
      {
        "img": "Frame 3293 (1).png",
        "name": "Ahmed Raza",
        "msg": "Good morning, did you sleep well?",
        "date": "Today",
        "msg count": "1",
      },
      {
        "img": "Frame 3293 (8).png",
        "name": "Flutter",
        "msg": "How is it going?",
        "date": "17/6",
        "msg count": "2",
      },
      {
        "img": "Frame 3293 (2).png",
        "name": "Micheal",
        "msg": "Aight, noted",
        "date": "17/6",
        "msg count": "0",
      },
    ];
    return Scaffold(
      appBar: AppBar(
        title: UiHelper.customText(
          context: context,
          text: "Chats",
          fontSize: 18,
          fontWeight: FontWeight.bold,
          fontFamily: "bold",
        ),
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.scaffoldDark
            : AppColors.scaffoldLight,
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.mark_chat_unread_outlined),
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_rounded)),
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Row(
            children: [
              SizedBox(width: 25),
              UiHelper.customImage(imgUrl: "Avatar.png"),
              SizedBox(width: 30),
              UiHelper.customImage(imgUrl: "Frame 3293 (6).png"),
              SizedBox(width: 30),
              UiHelper.customImage(imgUrl: "Frame 3293 (7).png"),
            ],
          ),
          SizedBox(height: 5),
          Row(
            children: [
              SizedBox(width: 25),
              UiHelper.customText(
                text: "Your Story",
                fontSize: 10,
                context: context,
              ),
              SizedBox(width: 20),
              UiHelper.customText(
                text: "Midala Hu...",
                fontSize: 10,
                context: context,
              ),
              SizedBox(width: 15),
              UiHelper.customText(
                text: "Salsabila...",
                fontSize: 10,
                context: context,
              ),
            ],
          ),
          SizedBox(height: 5),
          Divider(color: Color(0XFFADB5BD)),
          SizedBox(height: 20,),
          UiHelper.customTextField(
            context: context,
            controller: searchController,
            text: "Search",
            textInputType: TextInputType.name,
            iconData: Icons.search,
          ),
          SizedBox(height: 20,),
          Expanded(
            child: ListView.builder(
              itemCount: arrChats.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: ListTile(
                    leading: UiHelper.customImage(
                      imgUrl: arrChats[index]['img'].toString(),
                    ),
                    title: UiHelper.customText(
                      text: arrChats[index]['name'].toString(),
                      fontSize: 14,
                      context: context,
                    ),
                    subtitle: UiHelper.customText(
                      text: arrChats[index]['msg'].toString(),
                      fontSize: 12,
                      color: Color(0XFFADB5BD),
                      context: context,
                    ),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        UiHelper.customText(
                          text: arrChats[index]['date'].toString(),
                          fontSize: 10,
                          color: Color(0XFFA4A4A4),
                          context: context,
                        ),
                        SizedBox(height: 5,),
                        CircleAvatar(
                          radius: 12,
                          backgroundColor: Color(0XFFD2D5F9),
                          child: UiHelper.customText(
                            text: arrChats[index]['msg count'].toString(),
                            fontSize: 10,
                            color: Color(0XFFA4A4A4),
                            context: context,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
