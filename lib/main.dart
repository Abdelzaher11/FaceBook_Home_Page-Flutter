import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Facebook(),
  ));
}
class Facebook extends StatefulWidget {
  @override
  _FacebookState createState() => _FacebookState();
}

class _FacebookState extends State<Facebook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'facebook',
          style: TextStyle(
            color: Colors.blue[400],
            fontSize: 26.0,
            fontWeight: FontWeight.bold

          ),

        ),
        elevation: 0.0,
        actions: <Widget>[
          CircleAvatar(
            radius: 15.0,
            backgroundColor: Colors.grey[300],
            child: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 15.0,
              backgroundColor: Colors.grey[300],
              child: Icon(
                Icons.message,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            //ProfilePhoto & What's on your mine
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 17.0,
                      backgroundColor: Colors.grey[200],
                      child: Icon(
                        Icons.person,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(width: 5.0,),
                    Text(
                        "What's on your mind?"
                    ),
                  ],
                ),
              ),
            ),
            //live,photo and room buttons
            Divider(height: 0.5,),
            Container(
              color: Colors.white,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        MaterialButton(
                          onPressed:(){},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.videocam,
                                color: Colors.red,
                              ),
                              Text(
                                'Live'
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        MaterialButton(
                          onPressed:(){},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.photo,
                                color: Colors.green[400],
                              ),
                              Text(
                                  'Photo'
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        MaterialButton(
                          onPressed:(){},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.video_call,
                                color: Colors.purple,
                              ),
                              Text(
                                  'Room'
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //activity
            SizedBox(height: 7.0,),
            Container(
              color: Colors.white,
              height: 60.0,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: 30,
                      itemBuilder: (context,index)=>Activity(),
                    ),
                  ),
                ],
              ),
            ),
            //story
            SizedBox(height: 6.0,),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              height: 180.0,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: 30,
                        itemBuilder: (context,index)=>Story(),
                      ),
                    ),
                  ),

                ],
              ),
            ),
            //posts
            Row(children: <Widget>[
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 30,
                    itemBuilder: (context,index)=>Posts()
                ),
              ),
            ],),
          ],
        ),
      ),

    );
  }
  Widget Activity()=> Padding(
    padding: EdgeInsets.all(10.0),
    child: CircleAvatar(
      backgroundColor: Colors.grey[300],
      radius: 18.0,
      child: Icon(
        Icons.person,
        color: Colors.grey,
      ),
    ),
  );
  Widget Story()=>  Padding(
    padding: const EdgeInsets.all(3.0),
    child: Container(
      width: 100.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.grey[200],
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: CircleAvatar(
                      radius: 16.0,
                      backgroundColor: Colors.grey[300],
                      child: Icon(
                        Icons.person,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Spacer(flex: 1,),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      'Name',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 17.0
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
  Widget Posts()=>Padding(
    padding: EdgeInsets.only(top: 5.0,bottom: 5.0),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Column(
        children: <Widget>[
          //name,PP and time
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  radius: 16.0,
                  backgroundColor: Colors.grey[300],
                  child: Icon(
                    Icons.person,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(width: 5.0,),
                Column(
                  children: <Widget>[
                    Text(
                      'Username',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Text(
                          'Time',
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(width: 5.0,),
                        Text('.',style: TextStyle(fontWeight: FontWeight.bold),),
                        SizedBox(width: 5.0,),
                        Icon(
                          Icons.public,
                          color: Colors.grey[800],
                          size: 18.0,
                        ),
                      ],
                    ),
                  ],
                ),
                Spacer(flex: 1,),
                Icon(
                    Icons.linear_scale
                ),
              ],
            ),
          ),
          //post
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Post',
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          //likes or reacts
          Padding(
            padding:EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                SizedBox(width: 10.0,),
                Text(
                  'Likes',
                  style: TextStyle(
                  ),
                ),
              ],
            ),
          ),
          //like,comment and share
          Divider(height: 1.0,
            color: Colors.grey,),
          Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  children: <Widget>[
                    MaterialButton(
                      onPressed:(){},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.thumb_up,
                            color: Colors.grey,
                            size: 20.0,
                          ),
                          SizedBox(width: 5.0,),
                          Text(
                              'Like'
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: <Widget>[
                    MaterialButton(
                      onPressed:(){},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.mode_comment,
                            color: Colors.grey,
                            size: 20.0,
                          ),
                          SizedBox(width: 5.0,),
                          Text(
                              'Comment'
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: <Widget>[
                    MaterialButton(
                      onPressed:(){},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.share,
                            color: Colors.grey,
                            size: 20.0,
                          ),
                          SizedBox(width: 5.0,),
                          Text(
                              'Share'
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

        ],
      ),
    ),
  );

}

