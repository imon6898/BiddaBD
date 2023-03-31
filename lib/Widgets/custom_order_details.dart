import 'package:biddabd/Widgets/custom_text.dart';
import 'package:biddabd/Widgets/custom_total_row.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

class CustomOrderDetails extends StatelessWidget {
  final String? titleName,tilteWriter,orderName;
  final Color? color;
  final int? product,productPrice,subtotal,total;
  CustomOrderDetails(
      {this.product,
      this.productPrice,
      this.tilteWriter,
      this.titleName,
      this.orderName,
      this.subtotal,
      this.total,
      this.color});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      color: color,
      child: Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
                      CustomText(title: orderName!.toString(),size: 18,fw: FontWeight.bold,),
              SizedBox(height:10 ,),
              CustomText(title: "${product}  x ${titleName}",
                  size: 16,fw: FontWeight.w700, mx: 1,),
              SizedBox(height: 5,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomText(title: tilteWriter,size: 14,fw: FontWeight.w400,),
                  Spacer(),
                  CustomText(title: productPrice.toString(),),
                ],
              ),
              SizedBox(height: 5,),
              DottedLine(),
              SizedBox(height: 5,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomTotalRow(row1: "Sub Total",
                    rCOlor: Color(0xFF3A494E),rsize: 16,tColor: Color(0xFFCD113B),
                    row2: "৳ ${subtotal}.00",),
                  CustomTotalRow(row1: "Delivery Charge",
                    rCOlor: Color(0xFF3A494E),rsize: 14,
                    row2: "৳ 60.00",),
                  CustomTotalRow(row1: "VAT +SD  (If Applicable)",
                    rCOlor: Color(0xFF3A494E),rsize: 14,
                    row2: "৳${0}.00",),
                  CustomTotalRow(row1: "Discount",
                    rCOlor: Color(0xFF3A494E),rsize: 14,
                    row2: "৳${0}.00",),
                  DottedLine(),
                  DottedLine(),
                  CustomTotalRow(row1: " Total",
                    rCOlor: Colors.black,rsize: 18,tColor: Color(0xFFCD113B),
                    row2: "৳${total!+60} .00",),

                ],
              )



            ],
          ),
        ),
      ),
    );
  }
}
