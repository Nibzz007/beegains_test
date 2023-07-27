import 'package:beegains_task/application/enquiry_bloc/enquiry_bloc.dart';
import 'package:beegains_task/core/colors.dart';
import 'package:beegains_task/core/size.dart';
import 'package:beegains_task/core/textstyle.dart';
import 'package:beegains_task/presentation/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EnquiryListScreen extends StatefulWidget {
  EnquiryListScreen({super.key});

  @override
  State<EnquiryListScreen> createState() => _EnquiryListScreenState();
}

class _EnquiryListScreenState extends State<EnquiryListScreen> {
  EnquiryBloc bloc = EnquiryBloc();
  @override
  void initState() {
    super.initState();
    bloc.add(InitialEvent());
  }

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
      body: BlocConsumer<EnquiryBloc, EnquiryState>(
        bloc: bloc,
        listenWhen: (previous, current) => bloc.state == ActionableState(),
        buildWhen: (previous, current) => bloc.state != ActionableState(),
        listener: (context, state) {
          if (state is LogoutState) {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginScreen(),
                ),
                (route) => false);
          }
        },
        builder: (context, state) {
          if (state is LoadingState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is ErrorState) {
            return const Text("something went wrong");
          } else {
            return SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
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
                                Text(''),
                                kHeight5,
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Owner name'),
                                    Text('Mobile number')
                                  ],
                                ),
                                kHeight5,
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
            );
          }
        },
      ),
    );
  }
}
