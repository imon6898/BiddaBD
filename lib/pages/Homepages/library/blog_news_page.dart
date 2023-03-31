import 'package:biddabd/Widgets/custom_silver.dart';
import 'package:biddabd/Widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class BlogNewsPage extends StatefulWidget {
  const BlogNewsPage({Key? key}) : super(key: key);

  @override
  State<BlogNewsPage> createState() => _BlogNewsPageState();
}

class _BlogNewsPageState extends State<BlogNewsPage> {
  late YoutubePlayerController _controller;
  @override
  void initState() {
    super.initState();
    final videoID=YoutubePlayer.convertUrlToId("https://youtu.be/f2Ix95DvcW0");
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
    Size size= MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        physics: ScrollPhysics(),
        slivers: <Widget>[
          CustomSilver(title: "University Admission",
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
                        liveUIColor: Colors.redAccent,

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
                          height: size.height *.07,
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CustomText(
                              title: "গ্রাফিক ডিজাইন কি ? কেন গ্রাফিক ডিজাইন শিখবেন ?",
                              size: 18,fw: FontWeight.bold,
                            ),
                          ),

                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: CustomText(
                          size:16,title: "গ্রাফিক ডিজাইন কি ? : "
                         " গ্রাফিক ডিজাইন সম্পর্কে যদি আপনার, অ-আ-ক-খ জ্ঞানটুকুও না থাকে। তারপরও আপনি আজকের এই আর্টিকেল থেকে। গ্রাফিক ডিজাইন সম্পর্কিত যাবতীয় প্রশ্নের উওর পেয়ে যাবেন।"

                        "আসলে গ্রাফিক ডিজাইন কি? কেন গ্রাফিক ডিজাইন করবেন? কিভাবে শিখবেন এবং ভবিষ্যতে গ্রাফিক ডিজাইনের চাহিদা কেমন থাকবে? গ্রাফিক ডিজাইন থেকে কিভাবে আয় করব বা কোথায় করব ইত্যাদি বিষয়গুলো সম্পর্কে বিস্তারিত আলোচনা করবো।",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          height: size.height *.2,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("Images/blog_images.png",)
                            )
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: CustomText(
                          size:15,
                          title: "গ্রাফিক ডিজাইন কাদের জন্য?"
                         " দেখুন, আমাদের সবার ভেতরেই কোনো না কোনো প্রতিভা থাকে। কেউ ভালো খেলতে পারে, আবার কেউ ভালো লিখতে পারে। ঠিক তেমনি আপনার মধ্যে যদি আঁকি-বুঁকির প্রতিভা থাকে।"
                              "তাহলে গ্রাফিক সেক্টরে আপনাকে স্বাগতম। কারন আপনার এই প্রতিভার জোরে, গ্রাফিক সেক্টরে অনেকদুর পর্যন্ত যেতে পারবেন।"
                      "বর্তমানে অনলাইন সেক্টরে গ্রাফিক ডিজাইনের চাহিদা আকাশচুম্বী। পানির বোতল থেকে শুরু করে, সিনেমার দৃশ্য পর্যন্ত। সবখানেই রয়েছে গ্রাফিক ডিজাইনের বিপুল চাহিদা।"
                      "যদি আপনি নিজেকে একজন দক্ষ ডিজাইনার হিসেবে প্রতিষ্ঠিত করতে পারেন। তাহলে, গ্রাফিক ডিজাইনিং করে, নিজের একটা শক্তপোক্ত ক্যারিয়ার গড়তে পারবেন। তবে প্রশ্ন হলো, শুধু অঙ্কনের/আঁকাআঁকির প্রতিভা থাকলেই কি একজন গ্রাফিক ডিজাইনার হওয়া সম্ভব?"
                      "উওরে বলবো, না! যদি কারো মধ্যে শুধু অঙ্কনের প্রতিভা থাকলেই সে ডিজাইনার হতো। তাহলে অলিতে গলিতে গ্রাফিক ডিজাইনার ছড়িয়ে-ছিটিয়ে থাকতো। শুধু অঙ্কনের প্রতিভা নয়।"
                      "বরং আপনার ডিজাইনিংয়ের বিষয়ে যথেষ্ট ক্রিয়েটিভিটি থাকতে হবে। "
                      "সময়ের সাথে তাল মিলিয়ে যদি আপনার ডিজাইনের ভাষাকে মানুষের সামনে তুলে ধরতে পারেন। তাহলে একটা মানসম্মত ক্যারিয়ার আপনার সাফল্যের দরজায় এসে কড়া নাড়বে।",
                                              ),
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