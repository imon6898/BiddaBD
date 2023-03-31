import 'package:biddabd/Widgets/custom_text.dart';
import 'package:biddabd/pages/Homepages/library/blog_news_page.dart';
import 'package:flutter/material.dart';


class Blogportal extends StatefulWidget {
  final List<String> blogList=["University Admission Course",
  "Medical Admission Course","Engineering  Course"];
  final List<String> blogImg=["Images/university.png","Images/medical.png",
    "Images/engineering.png"];

  @override
  State<Blogportal> createState() => _BlogportalState();
}

class _BlogportalState extends State<Blogportal> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      physics: ScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.only(right: 16.0),
        child: Card(
          elevation: 3,
          color: Color(0xFFEEEEEE),
          child: Container(

            height:size.height*.15,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),

            ),
            child: Row(
              children: [
                Expanded(flex: 4,
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("Images/university.png"),fit: BoxFit.fill
                          )
                      ),)),
                Expanded(flex: 6,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Column(children: [
                        CustomText(title: "University Admission Course",size: 16,),
                        SizedBox(height: 10,),
                        MaterialButton(onPressed: ()
                        {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context)=>BlogNewsPage()));
                        },
                            child: Container(
                              height: 25,
                              width: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0XFFE4E7FF),
                              ),
                              child: Center(
                                child: CustomText(title: "Read Now",
                                  color: Color(0XFF2D368E),size: 12,fw: FontWeight.bold,),
                              ),
                            ))
                      ],),
                    )),
              ],
            ),
          ),
        )
      ),
    );
  }
}
