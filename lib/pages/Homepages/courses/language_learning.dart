import 'package:biddabd/Data/language%20learning.dart';
import 'package:biddabd/Widgets/custom_text.dart';
import 'package:biddabd/pages/Homepages/courses/language_learning_playlist.dart';
import 'package:flutter/material.dart';

class LanguageLearning extends StatefulWidget {
  final learn = LanguageLearningData.getLearn();
  @override
  State<LanguageLearning> createState() => _LanguageLearningState();
}

class _LanguageLearningState extends State<LanguageLearning> {


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        height: size.height *.18,
        width: double.infinity,
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (context,index)=>
                Card(
                  elevation: 4,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=>
                              LanguageLearningPlaylist(learningData: widget.learn[index],)));
                    },
                    child: Container(
                      height: size.height*.18,
                      width: size.height*.28,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),


                      margin: EdgeInsets.only(right: 10),
                      child: Column(
                        children: [
                          Expanded(
                            flex:15,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: AssetImage(widget.learn[index].learnImage.toString()),fit: BoxFit.cover
                                )


                              ),),
                          ),
                          Expanded(
                            flex:5,child:Container(
                            child: Center(
                              child: CustomText(title:widget.learn[index].learnTitle.toString(),size: 14,fw: FontWeight.bold,),
                            ),
                          ),),
                        ],
                      ),

                    ),
                  ),
                )
        ),
      ),
    );
  }
}
