import 'package:biddabd/Data/lecture.dart';
import 'package:biddabd/Widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../Widgets/custom_silver.dart';

class SubjectPlayList extends StatefulWidget {
  final Lecture? lecture;
  SubjectPlayList({this.lecture});

  @override
  State<SubjectPlayList> createState() => _SubjectPlayListState();
}

class _SubjectPlayListState extends State<SubjectPlayList> {
  //final  videoURL = widget.lecture!.lectureLink;
  late YoutubePlayerController _controller;
  @override
  void initState() {
    super.initState();
    final videoID=YoutubePlayer.convertUrlToId(widget.lecture!.lectureLink.toString());
    _controller=YoutubePlayerController(
        initialVideoId: videoID!,
        flags: YoutubePlayerFlags(
            autoPlay: false,
            enableCaption: true,
            isLive: false


        )
    );
  }
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        physics: ScrollPhysics(),
        slivers: <Widget>[
          CustomSilver(title: widget.lecture!.topicName.toString(),
            onpress: (){
              Navigator.of(context).pop();
            },iconDataled: Icons.arrow_back_outlined,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      YoutubePlayer(
                        controller: _controller,
                        showVideoProgressIndicator: true,

                        bottomActions: [
                          CurrentPosition(),
                          ProgressBar(
                            isExpanded: true,
                            colors: ProgressBarColors(
                              playedColor: Colors.deepPurple,
                              handleColor: Colors.amberAccent,

                            ),

                          ),
                          PlaybackSpeedButton(),

                        ],

                      ),
                      Card(
                        elevation: 4,
                        child: Container(
                          height: size.height *.08,
                          width: double.infinity,
                          child: Padding(
                            padding:  EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                CustomText(title: "Video 1 :",size: 18,fw: FontWeight.bold,),
                                SizedBox(width: 20,),
                                CustomText(title: "ভৌতজগত কি?",size: 18,fw: FontWeight.bold,)
                              ],
                            ),
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Image.asset(
                            height: 30,width: 60,"Images/red_icon.png"),
                        title: CustomText(title: "Video 1 : ভৌতজগত কি?"),
                        trailing: Image.asset(height: 30,width: 60,"Images/check_round_mark.jpg"),
                      ),
                      Divider(thickness: 2,height: 1),
                      ListTile(
                        leading: Image.asset(
                            height: 30,width: 60,"Images/red_icon.png"),
                        title: CustomText(title: "Video 1 : পরিমাপ কি?"),
                        trailing: Image.asset(height: 30,width: 60,"Images/check_round_mark.jpg"),
                      ),
                      Divider(thickness: 2,height: 1),
                      ListTile(
                        leading: Image.asset(
                            height: 30,width: 60,"Images/red_icon.png"),
                        title: CustomText(title: "Video 1 : গতিবিদ্যা ?"),
                        trailing: Image.asset(height: 30,width: 60,"Images/check_round_mark.jpg"),
                      ),
                      Divider(thickness: 2,height: 1),
                      ListTile(
                        leading: Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Icon(size: 30,Icons.access_alarm_outlined),
                        ),
                        title: CustomText(title: widget.lecture!.topicName.toString()),

                      ),
                    ],



              ),childCount: 1,
              //ListTile

            ), //SliverChildBuildDelegate
          )
          //CustomTextFieldForm(),
        ],
      ),
    );
  }
}
Widget _text(String title, String value, double size) {
  return RichText(
    text: TextSpan(
      text: '$title : ',
      style:  TextStyle(
        color: Colors.blueAccent,
        fontWeight: FontWeight.bold,
        fontSize: size,
      ),
      children: [
        TextSpan(
          text: value,
          style:  TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w300,
            fontSize: 20,
          ),
        ),
      ],
    ),
  );
}