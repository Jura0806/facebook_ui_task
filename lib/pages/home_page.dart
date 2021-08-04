import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static final String id ="home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: Text("facebook", style: TextStyle(color: Colors.blueAccent, fontSize: 30, fontWeight: FontWeight.bold),),
        actions: [
          IconButton(onPressed: (){},
              icon: Icon(Icons.search, color: Colors.grey,),
          ),
          IconButton(onPressed: (){},
            icon: Icon(Icons.camera_alt, color: Colors.grey,),
          )
        ],
      ),
      body: ListView(
        children: [
          // #post header
          Container(
            color: Colors.black,
            height: 120,
            padding: EdgeInsets.only(top: 10, right: 10, left: 10),
            child:Column(
              children: [
                Expanded(child: Row(
                  children: [
                    Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage("assets/images/user_5.jpeg"),
                        )
                      ),
                    ),
                    SizedBox(width: 10,),
                    Expanded(child: Container(
                      height: 46,
                      padding: EdgeInsets.only(right: 15, left: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(23),
                        border: Border.all(
                          width: 1,
                          color: Colors.grey
                        )
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "What's on your mind?",
                          hintStyle: TextStyle(color: Colors.grey, fontSize: 18)
                        ),
                      ),
                    ))
                  ],
                )),
               Expanded(child: Row(
                 children: [
                   Expanded(
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.video_call,color: Colors.red,),
                        SizedBox(width: 5,),
                        Text("Live", style: TextStyle(color: Colors.grey),)
                      ],
                     ),
                   ),
                   Container(
                     width: 2,
                     color: Colors.grey[400],
                     margin: EdgeInsets.only(top: 14, bottom: 14),
                   ),
                   Expanded(
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Icon(Icons.photo,color: Colors.green,),
                         SizedBox(width: 5,),
                         Text("Photo", style: TextStyle(color: Colors.grey),)
                       ],
                     ),
                   ),
                   Container(
                     width: 2,
                     color: Colors.grey[400],
                     margin: EdgeInsets.only(top: 14, bottom: 14),
                   ),
                   Expanded(
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Icon(Icons.location_on,color: Colors.red,),
                         SizedBox(width: 5,),
                         Text("Check in", style: TextStyle(color: Colors.grey),)
                       ],
                     ),
                   ),
                 ],
               )),

              ],
            ) ,
          ),
          // #post stories
          Container(
            height: 200,
            color: Colors.black,
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(width: 5,),
                makeStory(
                  storyImg : "assets/images/story_5.jpeg",
                  userImg  : "assets/images/user_5.jpeg",
                  userName : "User1",
                ),
                makeStory(
                  storyImg : "assets/images/story_3.jpeg",
                  userImg  : "assets/images/user_3.jpeg",
                  userName : "User1",
                ),
                makeStory(
                  storyImg : "assets/images/story_2.jpeg",
                  userImg  : "assets/images/user_2.jpeg",
                  userName : "User1",
                ),
                makeStory(
                  storyImg : "assets/images/story_1.jpeg",
                  userImg  : "assets/images/user_1.jpeg",
                  userName : "User1",
                ),
                makeStory(
                  storyImg : "assets/images/story_4.jpeg",
                  userImg  : "assets/images/user_4.jpeg",
                  userName : "User1",
                ),
              ],
            ),
          ),
          makeFeed(
            userName : "User Two",
            userImg : "assets/images/user_2.jpeg",
            feedImg1 : "assets/images/story_2.jpeg",
            feedImg2 : "assets/images/story_4.jpeg",
            feedTime: " 1 hr ago",
            feedText: "All the Lorem Ipsum generators on the internet tend to repeat predefined"
          ),
          makeFeed(
              userName : "User Three",
              userImg : "assets/images/user_3.jpeg",
              feedImg1 : "assets/images/feed_1.jpeg",
              feedImg2 : "assets/images/story_3.jpeg",
              feedTime: " 1 hr ago",
              feedText: "All the Lorem Ipsum generators on the internet tend to repeat predefined"
          ),
          makeFeed(
              userName : "User Four",
              userImg : "assets/images/user_4.jpeg",
              feedImg1 : "assets/images/feed_4.jpeg",
              feedImg2 : "assets/images/feed_5.jpeg",
              feedTime: " 1 hr ago",
              feedText: "All the Lorem Ipsum generators on the internet tend to repeat predefined"
          ),
          makeFeed(
              userName : "User Five",
              userImg : "assets/images/user_5.jpeg",
              feedImg1 : "assets/images/story_1.jpeg",
              feedImg2 : "assets/images/feed_2.jpeg",
              feedTime: " 1 hr ago",
              feedText: "All the Lorem Ipsum generators on the internet tend to repeat predefined"
          )
        ],
      ),
    );
  }
    Widget makeStory({storyImg, userImg, userName}){
    return AspectRatio(
      aspectRatio: 1.3/2,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(storyImg),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.1),
              ]
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 2,
                    color: Colors.blue,
                  ),
                  image: DecorationImage(
                    image: AssetImage(userImg),
                  )
                ),
              ),
              Text("User Five", style: TextStyle(color: Colors.white),)
            ],
          ),
        ),
      ) ,
    );
    }
    Widget makeFeed({userName, userImg, feedImg1, feedImg2, feedTime, feedText}){
    return Container(
      color: Colors.black,
      margin: EdgeInsets.only(top: 10),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(right: 10, left: 10) ,
            child: Column(
              children: [
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage(userImg),
                              )
                          ),
                        ),
                        SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(userName, style: TextStyle(color: Colors.grey[300], fontSize: 18),),
                            SizedBox(height: 3,),
                            Text(feedTime, style: TextStyle(color: Colors.grey),)
                          ],
                        ),
                      ],
                    ),
                    IconButton(onPressed: (){},
                      icon: Icon(Icons.more_horiz, color: Colors.grey,size: 30,),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Text(feedText, style: TextStyle(color: Colors.grey, letterSpacing: .7, height: 1.5),),
                SizedBox(height: 20,),
              ],
            ),
          ),
          Container(
            height: 240 ,
            child: Row(
              children: [
                Expanded(child: Container(
                  decoration: BoxDecoration(
                  image :  DecorationImage(
                    image: AssetImage(feedImg1),
                    fit: BoxFit.cover
                  ),
                )
      ),
                ),
                Expanded(child: Container(
                    decoration: BoxDecoration(
                      image :  DecorationImage(
                          image: AssetImage(feedImg2),
                          fit: BoxFit.cover
                      ),
                    )
                ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.only(right: 10, left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  makeLike(),
                  Transform.translate(
                    offset: Offset(-5,0),
                    child:  makeLove(),
                  ),
                  SizedBox(width: 5,),
                  Text("2.5K", style: TextStyle(color: Colors.grey[800],  ),)
                ],
                ),
                Text("400 Comments", style: TextStyle(color: Colors.grey[800], ),)
              ],
            ),
          ),
          SizedBox(height: 10,),
          // # Likes, comments, share
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             makeLikeButton(isActive: true),
             makeComments(),
              makeShare(),
            ],
          ),
          SizedBox(height: 10,),
        ],
      ),
    );
    }
    Widget makeLove(){
    return Container(
      height: 25,
      width: 25,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.red,
        border: Border.all(
          width: 1,
          color: Colors.white,
        )
      ),
      child: Icon(Icons.favorite, color: Colors.white, size: 15,),
    );
    }
    Widget makeLike(){
    return Container(
      height: 25,
      width: 25,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.blue,
        border: Border.all(
          width: 1,
          color: Colors.white
        )
      ),
      child: Icon(Icons.thumb_up, color: Colors.white, size: 15 ,),
    );
  }
    Widget makeLikeButton({isActive}){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical:5 ),
      child: Center(
        child: Row(
          children: [
            Icon(Icons.thumb_up, color: isActive ? Colors.blue : Colors.grey, size: 18,),
            SizedBox(width: 5,),
            Text("Like", style: TextStyle(color: isActive ? Colors.blue : Colors.grey),),
          ],
        ),
      ),
    );
    }
    Widget makeComments(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical:5 ),
      child: Center(
        child: Row(
          children: [
            Icon(Icons.mode_comment_outlined, color:  Colors.grey, size: 18,),
            SizedBox(width: 5,),
            Text("Comments", style: TextStyle(color:  Colors.grey),),
          ],
        ),
      ),
    );
  }
    Widget makeShare(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical:5 ),
      child: Center(
        child: Row(
          children: [
            Icon(Icons.share, color:  Colors.grey, size: 18,),
            SizedBox(width: 5,),
            Text("Share", style: TextStyle(color:  Colors.grey),),
          ],
        ),
      ),
    );
  }
}
