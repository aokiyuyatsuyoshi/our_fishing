import 'package:flutter/material.dart';
import 'package:untitled1/widget/posting_floating_button.dart';

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
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _CircleUserIconWidget(),
                      Column(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2,
                            child: _UserIdWidget("murosstagram"),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 2,
                            child: _UserNameWidget("青木優弥の日常"),
                          ),
                        ],
                      ),
                    ],
                  ),
                  _EditProfileButtonWidget(),
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
      floatingActionButton: postFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

_CircleUserIconWidget() {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(50.0)),
      border: Border.all(
        color: Colors.grey,
        width: 2.0,
      ),
    ),
    child: CircleAvatar(
      radius: 40,
      backgroundColor: Colors.white,
      backgroundImage: NetworkImage(
          'https://assets.st-note.com/production/uploads/images/37339503/picture_pc_46a3bbb12b45b56f50edd5ca17efcfd4.png'),
    ),
  );
}

_UserNameWidget(String userName) {
  return Text(
    userName,
    style: TextStyle(
      color: Colors.black,
      fontSize: 30,
      fontWeight: FontWeight.bold,
    ),
  );
}

_UserIdWidget(String userId) {
  return Text(
    userId,
    style: TextStyle(
      color: Colors.blueGrey,
      fontSize: 20,
    ),
  );
}

_EditProfileButtonWidget() {
  return ElevatedButton(
    child: const Text('プロフィールを編集する'),
    style: ElevatedButton.styleFrom(
      primary: Colors.orange,
      onPrimary: Colors.black,
      elevation: 16,
    ),
    onPressed: () {},
  );
}
