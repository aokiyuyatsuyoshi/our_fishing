import 'package:flutter/material.dart';
import 'package:untitled1/PersonalPage/Personal_widget.dart';

class PersonalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: NetworkImage(
                'https://illust.download/wp-content/uploads/2017/11/background137.jpg'),
            fit: BoxFit.fill,
          )),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleUserIconWidget(),
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2,
                            // height: MediaQuery.of(context).size.height / 3,
                            child: UserIdWidget("murosstagram"),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2,
                            // height: MediaQuery.of(context).size.height / 3,
                            child: UserNameWidget("青木優弥の日常"),
                          ),
                        ],
                      ),
                    ],
                  ),
                  EditProfileButtonWidget(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          "投稿一覧",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 1.0,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
