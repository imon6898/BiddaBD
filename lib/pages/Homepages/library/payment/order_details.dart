import 'package:biddabd/Data/library_data.dart';
import 'package:biddabd/Widgets/custom_Row_imges.dart';
import 'package:biddabd/Widgets/custom_material_button.dart';
import 'package:biddabd/Widgets/custom_order_details.dart';
import 'package:biddabd/Widgets/custom_row-card.dart';
import 'package:biddabd/Widgets/custom_silver.dart';
import 'package:biddabd/Widgets/custom_text.dart';
import 'package:biddabd/Widgets/custom_textform_field.dart';
import 'package:biddabd/pages/Homepages/library/payment/order_confirm_pages.dart';
import 'package:flutter/material.dart';

class OrderDetails extends StatefulWidget {

  final LibraryData? libraryData;
  final int? countValue;
  final int? resultValue;
  OrderDetails({this.libraryData, this.countValue, this.resultValue});

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {

  bool _isVisiable=false;
  bool _isColor=false;
  bool _ispay=true;


  @override
  Widget build(BuildContext context) {

    //TextEditingController deliveryAddress = TextEditingController();
    Size size =MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        slivers: <Widget>[

          CustomSilver(title: "Checkout",
              //rightTitle: "Clear Cart",
              iconDataled: Icons.arrow_back_outlined,onpress: (){
                Navigator.of(context).pop();
              }),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) { print(index);
              return  SingleChildScrollView(
                scrollDirection: Axis.vertical,
                physics: ScrollPhysics(),

                child: Container(
                  height: size.height,
                  color: Color(0xFFf8f8f8),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                        CustomText(title: "DELIVERY ADDRESS",size: 18,fw: FontWeight.w700,),
                        SizedBox(height: 5,),
                        CustomTextFieldForm(hintTitle: "Your Delivery Address Here",),
                        SizedBox(height: 5,),
                        CustomText(title: "Phone Number ",size: 18,fw: FontWeight.w700,),
                        SizedBox(height: 5,),
                        CustomTextFieldForm(hintTitle: "Receive Phone Number Here",),
                        SizedBox(height: 5,),
                        CustomText(title: "PAYMENT METHOD ",size: 18,fw: FontWeight.w700,),
                        SizedBox(height: 5,),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4.0,horizontal: 8),
                          child: Row(children: [
                            Card(
                              elevation:4,
                              child: GestureDetector(
                                onTap: (){
                                  setState(() {

                                    _isColor=!_isColor;

                                  });

                                },
                                child: Container(
                                  height: size.height*.1,
                                  width: size.width*.41,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),


                                  ),

                                  child: CustomRowCard(

                                    img: "Images/offline payment.png",
                                    colorimg: _isColor==true ?Color(0XFF2D368E):Colors.grey,
                                    name: "COD",
                                    colorName: _isColor==true ?Color(0XFF2D368E):Colors.grey,

                                  ),
                                ),

                              ),
                            ),
                            SizedBox(width: 5,),
                            Card(
                              elevation: 4,
                              child: GestureDetector(
                                onTap: (){
                                  setState(() {
                                    _isVisiable=!_isVisiable;
                                    _isColor=!_isColor;

                                  });
                                },
                                child: Container(
                                  height: size.height*.1,
                                  width: size.width*.41,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),

                                  ),
                                  child: CustomRowCard(
                                    img: "Images/online payment.png",
                                    colorimg: _isColor==false?Color(0XFF2D368E):Colors.grey,
                                    name: "Online Pay",
                                    colorName:_isColor==false?Color(0XFF2D368E):Colors.grey,

                                  ),
                                ),
                              ),
                            ),
                          ],),
                        ),
                        Expanded(
                          flex: 2,
                          child: Visibility(

                              visible: _isVisiable,
                              child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(children: [
                              Card(
                                elevation:4,
                                child: GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      _ispay=!_ispay;

                                    });


                                  },
                                  child: Container(
                                    height: size.height*.1,
                                    width: size.width*.4,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: CustomRowImages(
                                      imgRow: "Images/bkash.png",
                                      radioRow: "Images/radio.png",

                                      radioColor: _ispay==true ?Color(0XFF2D368E):Colors.grey,
                                      nameRow: "bKash",
                                        nameColor: _ispay==true?Color(0XFF2D368E):Colors.grey,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 5,),
                              Card(
                                elevation:4,
                                child: GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      _ispay==!_ispay!;
                                    });


                                  },
                                  child: Container(
                                    height: size.height*.1,
                                    width: size.width*.4,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Row(
                                     children: [
                                       Expanded(
                                         flex:5,
                                         child: Image(height: 20,width:20,
                                           color: _ispay==false?Color(0XFF2D368E):Colors.grey,
                                             image: AssetImage(
                                             "Images/radio.png"
                                         ),
                                             //color:
                                         ),
                                       ),
                                       Expanded(
                                         flex:5,
                                         child: Image(image: AssetImage(
                                             "Images/nogod.png"),fit: BoxFit.fill, ),
                                       ),
                                     ],
                                    ),
                                  ),
                                ),
                              ),

                            ],),
                          )),
                        ),

                        Expanded(
                          flex: 7,
                          child: CustomOrderDetails(
                            orderName: "ORDER DETAILS",
                            product:widget.countValue,
                            productPrice:widget.resultValue ,
                            titleName: widget.libraryData!.nameLib,
                            tilteWriter: widget.libraryData!.writerLib,
                            subtotal: widget.resultValue,
                            total: widget.resultValue,
                          ),
                        ),
                        SizedBox(height: 5,),
                        CustomMaterialButton(
                          buttonTitle: "Place Order",
                          size: size.height*.06,
                          onpress: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
                            OrderConfirmPages(totalamount: widget.resultValue,
                            subtotal: widget.resultValue,
                              productPrice: widget.resultValue,
                              product: widget.countValue,
                              libraryData: widget.libraryData,
                            )));
                          },
                        ),












                      ],



                    ),
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
