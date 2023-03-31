import 'package:biddabd/Data/library_data.dart';
import 'package:biddabd/Widgets/custom_order_details.dart';
import 'package:biddabd/Widgets/custom_row_adress.dart';
import 'package:biddabd/Widgets/custom_silver.dart';
import 'package:biddabd/Widgets/custom_text.dart';
import 'package:biddabd/Widgets/custom_total_row.dart';
import 'package:biddabd/pages/Homepages/homepages.dart';
import 'package:flutter/material.dart';

class OrderConfirmPages extends StatelessWidget {
  final LibraryData? libraryData;
  final String? titleName,tilteWriter;
  final int? product,productPrice,subtotal,totalamount;
  OrderConfirmPages({this.totalamount,this.subtotal,this.titleName,this.tilteWriter,this.productPrice,this.product, this.libraryData});

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,

        physics:ScrollPhysics(),
        slivers: <Widget>[
          CustomSilver(title: "Checkout",
              //rightTitle: "Clear Cart",
              iconDataled: Icons.arrow_back_outlined,onpress: (){
               Navigator.of(context).pop();
              }),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) { print(index);
              return  Container(
                height: size.height,
                color: Color(0xFFf8f8f8),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomText(title: "DELIVERY ADDRESS",),
                      SizedBox(height: 20,),
                      CustomRowAddress(
                        deliveryImg: "Images/location.jpg",
                        deliverryAddress: "f",
                      ),
                      SizedBox(height: 10,),
                      CustomRowAddress(
                        deliveryImg: "Images/phone.jpg",
                        deliverryAddress: "f",
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFE4E7FF)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CustomText(title: "ORDER DETAILS",),
                            ),
                            //SizedBox(height: 8,),
                            CustomTotalRow(
                              row1: "Order Id",
                              row2: " JcF-09876546",
                            ),
                            //SizedBox(height: 8,),
                            CustomTotalRow(
                              row1: "Payment Type",
                              row2: "COD",
                            ),
                            //SizedBox(height: 8,),
                            CustomTotalRow(
                              row1: "Payment Status",
                              row2: "UNPAID",
                            ),
                            //SizedBox(height: 8,),
                            CustomTotalRow(
                              row1: "Paid Amount",
                              row2: "৳ ${0}.00",
                            ),
                            //SizedBox(height: 8,),
                            CustomTotalRow(
                              row1: "Due Amount",
                              row2: totalamount.toString(),
                              rCOlor: Color(0xFFBC202E),
                              tColor: Color(0xFFBC202E),
                            ),
                           SizedBox(height: 8,),
                            Divider(
                              color: Color(0xFF2D368E),
                              indent: 3,
                              thickness: 2,
                            ),
                            //SizedBox(height: 8,),
                            CustomOrderDetails(
                              color: Color(0xFFE4E7FF),
                              orderName: "",
                              product:product,
                              productPrice:productPrice ,
                              titleName: libraryData!.nameLib.toString(),
                              tilteWriter: libraryData!.writerLib,
                              subtotal: totalamount,
                              total: totalamount,
                            ),

                          ],
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
