import 'package:biddabd/Data/library_data.dart';
import 'package:biddabd/Widgets/custom_material_button.dart';
import 'package:biddabd/Widgets/custom_sillver_appbar.dart';
import 'package:biddabd/Widgets/custom_silver.dart';
import 'package:biddabd/Widgets/custom_text.dart';
import 'package:biddabd/pages/Homepages/library/payment/cart_item.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LibraryBookInfo extends StatefulWidget {
  final LibraryData? libraryData;
  LibraryBookInfo({this.libraryData});

  @override
  State<LibraryBookInfo> createState() => _LibraryBookInfoState();
}

class _LibraryBookInfoState extends State<LibraryBookInfo> {
  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        physics:NeverScrollableScrollPhysics(),
        slivers: <Widget>[
          CustomSilver(title: "Library",
              iconDataled: Icons.arrow_back_outlined,onpress: (){
                Navigator.of(context).pop();
              }),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) => Container(
                    height: size.height,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Container(
                            height: size.height*.35,
                            child: Center(
                              child: Column(
                                children: [
                                  Expanded(flex:4,child: Image.asset(
                                      widget.libraryData!.imgLib.toString())),
                                  Expanded(flex:2,child: Padding(
                                    padding: const EdgeInsets.only(top: 16.0),
                                    child: Column(
                                      children: [
                                        CustomText(title: widget.libraryData!.nameLib,size: 16,fw: FontWeight.w700,),
                                        SizedBox(height: 5,),
                                        CustomText(title: widget.libraryData!.writerLib,size: 14,),
                                        SizedBox(height: 8,),
                                        CustomText(title: "Tk ${widget.libraryData!.discountPrice.toString()}",
                                          color: Color(0xFFBC202E),fw: FontWeight.w700,size: 16,),
                                      ],
                                    ),
                                  )),
                                ],
                              ),
                            ),
                          ),

                        ),
                        Divider(thickness: 1,color: Colors.grey,),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0,right: 20),
                          child: Container(
                            height: size.height*.12,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(title: "About This Book",size: 16,fw: FontWeight.bold,),
                                CustomText(title: "Lorem ipsum dolor sit amet, "
                                    "consectetur adipiscing elit. Faucibus interdum"
                                    " fermentum, augue justo, sed interdum rutrum "
                                    "libero sit.",size: 14,lt: 1,fw: FontWeight.w500,)
                              ],
                            ),
                          ),
                        ),
                        Divider(thickness: 1,color: Colors.grey,),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0,right: 20),
                          child: Container(
                            height: size.height*.12,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("বিস্তারিত",style: GoogleFonts.bebasNeue(fontSize: 16,
                                fontWeight: FontWeight.w700),),
                                CustomText(title: "Lorem ipsum dolor sit amet, "
                                    "consectetur adipiscing elit. Faucibus interdum"
                                    " fermentum, augue justo, sed interdum rutrum "
                                    "libero sit.",size: 14,lt: 1,fw: FontWeight.w500,)

                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Card(
                            elevation: 6,
                            child: Container(
                              height: size.height*.13,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          CustomText(title: "Price",size: 16,),
                                          CustomText(
                                            title: widget.libraryData!.discountPrice.toString(),
                                            fw: FontWeight.bold,size: 16,)
                                        ],),
                                    ),
                                    Expanded(flex: 3,
                                      child: CustomMaterialButton(
                                        size: 20,
                                        onpress: (){
                                          Navigator.of(context).push(
                                               MaterialPageRoute(
                                                  builder: (context)=>
                                                      CartItem(libraryData: widget.libraryData,)));
                                        },
                                        iconData: Icons.shopping_cart_outlined,
                                        buttonTitle: "Add to Bag",
                                      ),)
                                  ],
                                ),
                              ),

                            ),
                          ),
                        ),








                      ],



                    ),
                  ),childCount: 1,
              //ListTile

            ), //SliverChildBuildDelegate
          ),
          //CustomTextFieldForm(),
        ],
      ),
    );
  }
}
