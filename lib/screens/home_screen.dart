import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(

            title: Text('WhatsApp'),
            actions: [
             Icon(Icons.search),
              SizedBox(width: 10,),
              PopupMenuButton(
                  icon: Icon(Icons.more_vert),
                  itemBuilder: (context)=>[
              PopupMenuItem(value:'1' ,child: Text('New Group')),
                    PopupMenuItem(value:'2' ,child: Text('New Bodcast')),
                    PopupMenuItem(value:'3' ,child: Text('Linked Devices')),
                    PopupMenuItem(value:'4' ,child: Text('Starred Messaging')),
                    PopupMenuItem(value:'5' ,child: Text('Setting')),

                  ]
              ),

            ],
            bottom: TabBar(
              tabs: [
                Tab(child: Icon(Icons.groups),),
                Tab(child:Text('Chats'), ),
                Tab(child:Text('Status'), ),
                Tab(child:Text('Calls'), ),



              ],
            ),
          ),
        body: TabBarView(
          children: [
            Text('Community'),
            ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index){

                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://images.pexels.com/photos/7269511/pexels-photo-7269511.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                    ),
                    title: Text('Jhon'),
                    subtitle: Text('Where is my dog?'),
                    trailing: Text('6.36 pm'),
                  );
                }

            ),
            Text('Status'),
            ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index){

                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://images.pexels.com/photos/7269511/pexels-photo-7269511.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                    ),
                    contentPadding: EdgeInsets.zero,
                    title: Text('Jhon'),
                    subtitle: Align(
                      alignment: Alignment.topLeft,
                      child: Text( index/2 ==0? 'you missed audio call': 'Video Call'),

                    ),
                    trailing:Icon(index /2 ==0?Icons.phone: Icons.video_call) ,
                  );
                }

            ),
          ],
        ),




        )
    );
  }
}
