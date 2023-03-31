import 'package:biddabd/Data/library_data.dart';
import 'package:biddabd/Widgets/custom_material_button.dart';
import 'package:biddabd/Widgets/custom_silver.dart';
import 'package:biddabd/Widgets/custom_text.dart';
import 'package:biddabd/Widgets/custom_textform_field.dart';
import 'package:biddabd/Widgets/custom_total_row.dart';
import 'package:biddabd/pages/Homepages/library/payment/order_details.dart';
import 'package:flutter/material.dart';

class CartItem extends StatefulWidget {
  final LibraryData? libraryData;
  CartItem({this.libraryData});


  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  bool valuesecond = false;
  bool value1= false;
  int counter = 1;
  int delivery=60;
  late int result ;


  @override
  Widget build(BuildContext context) {
    Size size =MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        physics:NeverScrollableScrollPhysics(),
        slivers: <Widget>[
          CustomSilver(title: "Cart",
              rightTitle: "Clear Cart",
              iconDataled: Icons.arrow_back_outlined,onpress: (){
                Navigator.of(context).pop();
              }),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) { print(index);
                    return  Container(
                      height: size.height,
                      color: Color(0xFFf8f8f8),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                height: size.height*.1,
                                padding: EdgeInsets.symmetric(vertical: 20),
                                child: Row(
                                  children: [
                                    Checkbox(
                                      value: this.valuesecond,
                                      onChanged: (value) {
                                        setState(() {
                                          this.valuesecond = value!;
                                        });
                                      },
                                    ),
                                    SizedBox(width: 10,),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        CustomText(title: "Meserch Tito Libraby",
                                          size: 16,fw: FontWeight.bold,),
                                        CustomText(title: "(Jhenaidah)",size: 14,),
                                      ],
                                    )
                                  ],
                                )),
                            Divider(thickness: 1,color: Colors.grey,),
                            Container(
                                height: size.height*.16,
                                padding: EdgeInsets.symmetric(horizontal: 10,),
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex:2,
                                      child: Checkbox(
                                        value: this.value1,
                                        onChanged: (value) {
                                          setState(() {
                                            this.value1 = value!;

                                          });
                                        },
                                      ),
                                    ),
                                    Expanded(flex:5,
                                        child: Container(
                                          padding: EdgeInsets.all(16),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            image: DecorationImage(image: AssetImage(
                                              widget.libraryData!.imgLib.toString(),
                                            ),fit: BoxFit.cover)
                                          ),
                                        )),
                                    Expanded(
                                      flex: 8,
                                      child: Padding(
                                        padding: const EdgeInsets.only(left:8.0,top: 10,bottom: 10),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            CustomText(title: widget.libraryData!.nameLib,
                                              size: 16,fw: FontWeight.bold,mx: 2,),
                                            CustomText(title:widget.libraryData!.writerLib,size: 14,),

                                          CustomText(title: "Tk ${widget.libraryData!.discountPrice.toString()}",
                                              color: Color(0xFFBC202E),fw: FontWeight.w700,size: 16,),
                                            Row(
                                              children: [
                                                CustomText(title: "Quantity :",),
                                                SizedBox(width: 10,),
                                                CustomText(title: "",),
                                              ],
                                            ),

                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 8,
                                        child: Align(
                                          alignment: Alignment.bottomRight,
                                          child: Container(
                                            height: 40,
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Color(0XFFE4E7FF),
                                                  blurRadius: 2,
                                                )
                                              ],
                                              borderRadius: BorderRadius.circular(40),
                                              color: Color(0XFFE4E7FF),
                                            ),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                CircleAvatar(
                                                  backgroundColor: Colors.white,
                                                  child: IconButton(icon:Icon(Icons.remove,),
                                                      onPressed: (){


                                                        setState(() {
                                                          counter--;

                                                        });

                                                      },
                                                    color: Color(0xFF2D368E),),
                                                ),
                                              counter<0?
                                                Center(child: CustomText(title:"0",
                                                  size: 16,fw: FontWeight.bold,)):
                                              Center(child: CustomText(title: counter.toString(),
                                                size: 16,fw: FontWeight.bold,)),

                                                CircleAvatar(
                                                  backgroundColor: Colors.white,
                                                  child: IconButton(icon:Icon(Icons.add,),
                                                    onPressed: (){
                                                      setState(() {
                                                        counter++;

                                                      });

                                                    },
                                                    color: Color(0xFF2D368E),),
                                                ),


                                              ],
                                            ),
                                          ),
                                        ))
                                  ],
                                )),
                            Divider(thickness: 1,color: Colors.grey,),
                            SizedBox(height: 10,),
                            Container(
                                height: size.height*.27,
                                width: double.infinity,
                                color: Color(0xFFEEEEEE),
                               // padding: EdgeInsets.symmetric(vertical: 8,),
                                child:  Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomTotalRow(row1: "Sub Total",
                                      rCOlor: Color(0xFF3A494E),rsize: 16,tColor: Color(0xFFCD113B),
                                      row2: "৳ ${result=counter * widget.libraryData!.discountPrice!.toInt()}.00",),
                                    CustomTotalRow(row1: "Delivery Charge",
                                      rCOlor: Color(0xFF3A494E),rsize: 14,
                                      row2: "৳${delivery}.00",),
                                    CustomTotalRow(row1: "VAT +SD  (If Applicable)",
                                      rCOlor: Color(0xFF3A494E),rsize: 14,
                                      row2: "৳${0}.00",),
                                    CustomTotalRow(row1: "Discount",
                                      rCOlor: Color(0xFF3A494E),rsize: 14,
                                      row2: "৳${0}.00",),
                                    Divider(thickness: 1,color: Colors.grey,),
                                    CustomTotalRow(row1: " Total",
                                      rCOlor: Colors.black,rsize: 18,tColor: Color(0xFFCD113B),
                                      row2: "৳${result+delivery}.00",),
                                  ],
                                )),
                            Container(
                              height: size.height*.15,
                              padding: EdgeInsets.only(top: 10),
                              child: Container(
                                height: size.height*.14,

                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: CustomTextFieldForm(
                                      hintTitle: "Adding Comment",
                                    ),
                                  ),
                                ),
                              ),

                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 40.0,left: 40,right: 40),
                              child: CustomMaterialButton(
                                size: size.height*.08,
                                buttonTitle: "CHECKOUT",
                                onpress: (){
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>OrderDetails(
                                    libraryData: widget.libraryData,
                                    countValue: counter,
                                    resultValue: result,
                                  )));

                                },
                              ),
                            )












                          ],



                        ),
                      ),
                    );
                  },childCount: 1,
              //ListTile

            ), //SliverChildBuildDelegate
          ),
          //CustomTextFieldForm(),
        ],
      ),
    );
  }
}
