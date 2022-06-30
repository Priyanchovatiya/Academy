import 'package:academy/Screens/Notifications.dart';
import 'package:academy/Screens/Profile.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

import '../User.dart';
import 'Coaches.dart';
import 'UserDialog.dart';
import 'Notifications.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<User> userList = [
    User(Username: 'Nike Football Club Dwarka', players: '87', coaches: '12', CenterHead: 'Macro Reus', GamesName: 'Football', Location: 'BBPS,Plot-14,Sector-12,Dwarka,New delhi'),
    User(Username: 'Nike Basketball Club JanakPuri', players: '87', coaches: '17', CenterHead: 'Macro Reus', GamesName: 'Basket Ball', Location: 'BBPS,Plot-14,Sector-12,Dwarka,New delhi'),
  ];

  @override
  Widget build(BuildContext context) {

    void addUserDataOk(User user) {
      setState(() {
        userList.add(user);
      });
    }

    Widget buildCard(String title){
      return Padding(
        padding: const EdgeInsets.all(15),
        child: Card(
          child: ExpandablePanel(
            header: Container(
              padding: const  EdgeInsets.all(10),
              child: Center(
                child: Text(title,style:  const TextStyle(
                  fontSize:  15,
                  fontWeight: FontWeight.bold
                ),),
              ),
            ),
            collapsed: const Text('',style: TextStyle(
              fontSize: 18
            ),),
            expanded: Container(
              child: Column(
                children: [
                  const SizedBox(height: 8,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const SizedBox(width: 8,),

                      Expanded(

                        child: Container(
                          height: 30,

                          decoration: BoxDecoration(
                            color: Colors.black,
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(8),
                          ),

                          child: const  Center(child: Text('All',style: TextStyle(color: Colors.white),)),
                        ),
                      ),
                      const SizedBox(width: 8,),
                      Expanded(

                        child: Container(
                          height: 30,

                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(8),
                          ),

                          child: const Center(child: Text('Basketball')),
                        ),
                      ),
                      const SizedBox(width: 8,),
                      Expanded(

                        child: Container(
                          height: 30,

                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(8),
                          ),

                          child: const Center(child: Text('Football')),
                        ),
                      ),
                      const SizedBox(width: 8,),
                      Expanded(

                        child: Container(
                          height: 30,

                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(8),
                          ),

                          child: const Center(child: Text('Tennis')),
                        ),
                      ),
                      const SizedBox(width: 8,),



                    ],
                  ),
                  const SizedBox(height: 8,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const SizedBox(width: 8,),

                      Expanded(

                        child: Container(
                          height: 30,

                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(8),
                          ),

                          child: const  Center(child: Text('Fencing')),
                        ),
                      ),
                      const SizedBox(width: 8,),
                      Expanded(

                        child: Container(
                          height: 30,

                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(8),
                          ),

                          child: const Center(child: Text('Swimming')),
                        ),
                      ),
                      const SizedBox(width: 8,),
                      Expanded(

                        child: Container(
                          height: 30,

                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(8),
                          ),

                          child: Center(child: Text('Hockey')),
                        ),
                      ),
                      const SizedBox(width: 8,),
                      Expanded(

                        child: Container(
                          height: 30,

                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(8),
                          ),

                          child: const Center(child: Text('Karate')),
                        ),
                      ),
                      const SizedBox(width: 8,),





                    ],
                  ),
                  const SizedBox(height: 8,),

                ],
              ),
            ) ,

          ),
        ),
      );
    }

    void showUserDialog() {
      showDialog(
          context: context,
          builder: (_) {
            return AlertDialog(
              content: AddUserDialog(adduser: addUserDataOk),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            );
          });
    }

    return Scaffold(

      floatingActionButton: userList.length <= 1 ?
      FloatingActionButton.extended(
        onPressed: showUserDialog,
        label: const Text(
          'add New Academy',
          style: TextStyle(color: Colors.black),
        )
            ,
        icon: const Icon(
          Icons.add,
          color: Colors.black,
        ),

        backgroundColor: Colors.white ,
      ): FloatingActionButton(onPressed: showUserDialog,
        backgroundColor: Colors.black,
      child: const Icon(
        Icons.add,
        color: Colors.white,
      ),),

      appBar: AppBar(
        title: const Text("Dashboard"),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
           buildCard('Sport Categories'),
            Container(
              margin: const EdgeInsets.all(10),
              height: 600,
              child: ListView.builder(
                  itemCount: userList.length,
                  itemBuilder: (ctx, index) {
                    return GestureDetector(
                      onLongPress: (){
                        setState(() {
                          userList.removeAt(index);

                        });

                      },
                      child: Card(
                        child: Container(
                          padding: const EdgeInsets.only(
                              right: 25, left: 15, top: 8, bottom: 8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                userList[index].Username,
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.grey.withOpacity(0.3),
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                        ),
                                        height: 30,
                                        width: 30,
                                        child: Center(
                                            child: Text(
                                          userList[index].players,
                                          style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      const Center(
                                        child: Text(
                                          'Players',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 15),
                                        ),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 40,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.grey.withOpacity(0.3),
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                        ),
                                        height: 30,
                                        width: 30,
                                        child: Center(
                                            child: Text(
                                          userList[index].coaches,
                                          style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      const Text(
                                        'Coaches',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15),
                                      )
                                    ],
                                  ),
                                  Expanded(child: Container()),
                                  Text(
                                    userList[index].GamesName,
                                    style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Center Head: ${userList[index].CenterHead}',
                                    style: const TextStyle(
                                      color: Colors.grey,
                                      fontSize: 13,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    'Location: ${userList[index].Location}',
                                    style: const TextStyle(
                                      color: Colors.grey,
                                      fontSize: 13,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );


  }

}


