import 'package:biddabd/Data/library_data.dart';
import 'package:biddabd/Widgets/custom_silver.dart';
import 'package:biddabd/Widgets/custom_text.dart';
import 'package:biddabd/Widgets/custom_textform_field.dart';
import 'package:biddabd/pages/Homepages/library/library_book_info.dart';
import 'package:biddabd/pages/Homepages/library/payment/cart_item.dart';
import 'package:flutter/material.dart';

class LibraryPage extends StatefulWidget {
  final customLibrary = LibraryData.getLibrary();

  @override
  State<LibraryPage> createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(

      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        physics: ScrollPhysics(),
        slivers: <Widget>[
          CustomSilver(title: "Library",
              iconDataled: Icons.arrow_back_outlined,onpress: (){
                Navigator.of(context).pop();
              }),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) => Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                    Row(
                      children: [
                        Expanded(
                          flex:6,
                          child: CustomTextFieldForm(hintTitle: "Search",iconData: Icons.search_outlined),),
                        Expanded(flex:1,child: Container(
                          height: 58,
                          width: 10,
                          //color: Colors.redAccent,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            shape: BoxShape.rectangle,
                            border: Border.all(
                              color: Color(0xFF2D368E)
                            ),


                          ),
                          child: GestureDetector(
                            onTap: (){

                            },
                              child: Image.asset("Images/filter.png"))
                        ))
                      ],
                    ),
                  GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.6,
                    ),
                    padding: EdgeInsets.zero,
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: widget.customLibrary.length,
                    itemBuilder: (context, index) =>
                        Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: GestureDetector(
                            onTap: (){
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                                  LibraryBookInfo(
                                    libraryData: widget.customLibrary[index],
                                  )));
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                    flex:10,
                                    child:Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 5),
                                      child: Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    widget.customLibrary[index].imgLib.toString()),fit: BoxFit.fill)

                                        ),),
                                    ) ),
                                Expanded(
                                  flex:7,
                                  child:Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        CustomText(title: widget.customLibrary[index].nameLib,size: 16,fw: FontWeight.w700,),
                                        SizedBox(height: 5,),
                                        CustomText(title: widget.customLibrary[index].writerLib,size: 14,),
                                        SizedBox(height: 8,),
                                        index %2 ==0 ?
                                        Row(
                                          children: [
                                            CustomText(title: "৳ ${widget.customLibrary[index].discountPrice.toString()}",
                                              color: Color(0xFFBC202E),fw: FontWeight.w700,size: 16,),
                                            SizedBox(width: 10,),
                                            CustomText(title: "৳ ${widget.customLibrary[index].normalPrice.toString()}",
                                              color: Colors.grey,fw: FontWeight.bold,size: 16,decoration: TextDecoration.lineThrough,),
                                          ],
                                        ):CustomText(title: "৳ ${widget.customLibrary[index].discountPrice.toString()}",
                                          color: Color(0xFFBC202E),fw: FontWeight.w700,size: 16,),

                                      ],
                                    ),
                                  ),),
                                Expanded(
                                  flex:3,
                                  child:GestureDetector(
                                    onTap: (){
                                       Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CartItem(
                                        libraryData: widget.customLibrary[index],
                                       )));
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.vertical(bottom:Radius.circular(20)),
                                          color: Color(0xFFE4E7FF)

                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                                        child: Row(
                                          children: [
                                            Icon(Icons.shopping_cart_outlined,color: Color(0xFF2D368E),),
                                            SizedBox(width: 5,),
                                            CustomText(title: "Add to Cart",color: Color(0xFF2D368E),)

                                          ],
                                        ),
                                      ),
                                    ),
                                  ),),
                              ],
                            ),
                          ),
                        ),

                  )






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
