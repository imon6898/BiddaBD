import 'package:biddabd/Data/admission_test_course.dart';
import 'package:biddabd/Widgets/custom_silver.dart';
import 'package:biddabd/Widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class AdmissionPlaylist extends StatefulWidget {
  final AdmissionTestCourse? admissionTestCourse;
  AdmissionPlaylist({this.admissionTestCourse});


  @override
  State<AdmissionPlaylist> createState() => _AdmissionPlaylistState();
}

class _AdmissionPlaylistState extends State<AdmissionPlaylist> {
  late YoutubePlayerController _controller;
  @override
  void initState() {
    super.initState();
    final videoID=YoutubePlayer.convertUrlToId("https://youtu.be/gbnS8QRXfp8");
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
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        physics: ScrollPhysics(),
        slivers: <Widget>[
          CustomSilver(title: widget.admissionTestCourse!.addsTitle,
            onpress: (){
              Navigator.of(context).pop();
            },iconDataled: Icons.arrow_back_outlined,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) => Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
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
                          height: 30,"Images/red_icon.png"),
                      title: CustomText(title: "Video 1 : ভৌতজগত কি?"),
                      trailing: Image.asset(height: 30,width: 60,"Images/check_round_mark.jpg"),
                    ),
                    Divider(thickness: 2,height: 1),
                    ListTile(
                      leading: Image.asset(
                          height: 30,"Images/red_icon.png"),
                      title: CustomText(title: "Video 1 : পরিমাপ কি?"),
                      trailing: Image.asset(height: 30,width: 60,"Images/check_round_mark.jpg"),
                    ),
                    Divider(thickness: 2,height: 1),
                    ListTile(
                      leading: Image.asset(
                          height: 30,"Images/red_icon.png"),
                      title: CustomText(title: "Video 1 : গতিবিদ্যা ?"),
                      trailing: Image.asset(height: 30,width: 60,"Images/check_round_mark.jpg"),
                    ),
                    Divider(thickness: 2,height: 1),
                    ListTile(
                      leading: Icon(size: 30,Icons.access_alarm_outlined),
                      title: CustomText(title: widget.admissionTestCourse!.addsTitle.toString()),

                    ),

                  ],



                ),
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