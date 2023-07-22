import 'package:beegains_task/core/colors.dart';
import 'package:beegains_task/core/size.dart';
import 'package:beegains_task/core/textstyle.dart';
import 'package:flutter/material.dart';

class EnquiryListScreen extends StatelessWidget {
  const EnquiryListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      appBar: AppBar(
        title: Text(
          'Enquiry List',
          style: enquiryAppbarText,
        ),
        centerTitle: true,
        backgroundColor: kBlack,
        iconTheme: const IconThemeData(color: kWhite),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          child: Column(
            children: [
              ListView.separated(
                shrinkWrap: true,
                physics: const ScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    color: kBlue,
                    height: height * 0.15,
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Order No'),
                          kHeight5,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Owner name'),
                              Text('Mobile number')
                            ],
                          ),
                          kHeight5,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('District'),
                              kWidth90,
                              Text('vehicle make'),
                              Text('Model')
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 15,
                  );
                },
                itemCount: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
