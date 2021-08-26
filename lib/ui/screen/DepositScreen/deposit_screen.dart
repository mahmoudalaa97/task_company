import 'package:app/utils/colors.dart';
import 'package:app/utils/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DepositScreen extends StatelessWidget {

 String? selectedValue;
final List<String> list=["Test","Test1"];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    maxRadius: 30,
                    child: SvgPicture.asset(
                      "assets/ic_deposit.svg",
                      color: Colors.white,
                    ),
                    backgroundColor: MyColors.blueColor,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Deposit Transaction",
                        style: MyStyle.textStyle(
                            fontSize: 14, color: Colors.black),
                      ),
                      Text("Enter the required amount of cache deposit ",
                          style: MyStyle.textStyle(
                            fontSize: 11,
                            color: Colors.black38,
                            fontWeight: FontWeight.w400,
                          )),
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40,),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          "assets/ic_deposit.svg",
                          color: MyColors.brownColor,
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Text(
                          "Amount",
                          style: MyStyle.textStyle(
                              fontSize: 13,
                              color: Colors.black38,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: 40,
                      child: TextFormField(
                        controller: TextEditingController(text: "0.0"),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                      ),
                    )
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 15,bottom: 15),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          "assets/ic_deposit.svg",
                          color: MyColors.brownColor,
                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Text(
                          "Wallet Pocket",
                          style: MyStyle.textStyle(
                              fontSize: 13,
                              color: Colors.black38,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: 40,
                      width: double.infinity,
                      child: DropdownButton<String>(
                        isExpanded: true,
                        hint:  Text("Select item"),
                        value: selectedValue,
                        onChanged: (value){
                          selectedValue =value;
                        },
                        items: list.map((String value) {
                          return  DropdownMenuItem<String>(
                            value: value,
                            child: Row(
                              children: <Widget>[
                                Text(
                                  value,
                                  style:  TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                      ),
                    )
                  ],
                ),
              ),
              
              SizedBox(
                width: double.infinity,
                height: 40,
                child: MaterialButton(
   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  onPressed: (){},color: MyColors.blueColor,child: Text("Submit",style: MyStyle.textStyle(fontSize: 14, color: Colors.white),),),
              )

            ],
          ),
        ),
      ),
    );
  }
}
