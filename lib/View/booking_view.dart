// ignore_for_file: prefer_const_constructors

import "package:boot_app_task/linker.dart";

class BookingView extends StatelessWidget {
  const BookingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: const Icon(
              Icons.arrow_back,
              color: Color(0xff262323),
            )),
        actions: [
          Column(
            children: [
              SizedBox(height: 15),
              customText(
                  "Cancel", 14, Color(0xff262323), FontWeight.w500, () {}),
            ],
          ),
          SizedBox(
            width: 8,
          )
        ],
      ),
      //_____________________________________________boday
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15),
              //_________________________________________________________booking card
              SizedBox(
                height: 140,
                child: Card(
                  elevation: 2,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        height: 110,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: AssetImage("assets/images/boat7.jpg"),
                              fit: BoxFit.fill,
                            )),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              customText("Boat Name", 16, Color(0xff262323),
                                  FontWeight.w500, () {}),
                              customText("With one hour of boating", 11,
                                  Color(0xff262323), FontWeight.w400, () {}),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Color(0xff494AFF),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xff494AFF),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xff494AFF),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color.fromARGB(225, 240, 240, 245),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color.fromARGB(225, 240, 240, 245),
                                  ),
                                  customText("Rating", 11, Color(0xff262323),
                                      FontWeight.w400, () {})
                                ],
                              )
                            ],
                          ),
                          //SizedBox(width: 20,),
                          Column(
                            // crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              customText("\$499.00", 14, Color(0xff262323),
                                  FontWeight.w500, () {}),
                              Icon(
                                Icons.person,
                                color: Color(0xff230B34),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              //________________________________________________________________________calender card
              SizedBox(
                //  height: MediaQuery.of(context).size.height*0.40,
                child: TableCalendar(
                  rowHeight: 40,
                  headerStyle: HeaderStyle(
                      titleCentered: true,
                      //titleTextFormatter: (date, locale) => DateFormat.yMMM(locale).format(date),
                      formatButtonVisible: false,
                      // titleTextStyle: TextStyle(fontSize: MediaQuery.of(context).size.width*0.007)
                      titleTextStyle:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                  firstDay: DateTime.utc(2010, 10, 16),
                  lastDay: DateTime.utc(2030, 3, 14),
                  focusedDay: DateTime.now(),
                ),
              ),

              //__________________________________________________________________duaration card
              SizedBox(
                height: 6,
              ),
              //________________________________________________________________________________________timing
              ListTile(
                leading: customText(
                    "3:00 PM", 14, Color(0xff9FA5C0), FontWeight.w700, () {}),
                trailing: customText(
                    "11:30 PM", 14, Color(0xff9FA5C0), FontWeight.w700, () {}),
              ),
              //_________________________________________________________________________________________time bar
              GetBuilder<SearchController>(builder: (controller) {
                return RangeSlider(
                    values: Get.find<SearchController>().currentTimeRange,
                    max: 690, //minusts duration
                    divisions: 690,
                    labels: RangeLabels(
                      Get.find<SearchController>()
                          .currentTimeRange
                          .start
                          .round()
                          .toString(),
                      Get.find<SearchController>()
                          .currentTimeRange
                          .end
                          .round()
                          .toString(),
                    ),
                    onChanged: (RangeValues values) {
                      Get.find<SearchController>().currentTimeValue(values);
                    });
              }),

              customText("Boating Duaration", 18, Color(0xff3E5481),
                  FontWeight.w700, () {}),
              //______________________________________________________________________________date
              ListTile(
                title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      customText("Start Date", 11, Color(0xff262323),
                          FontWeight.w400, () {}),
                      customText("End Date", 11, Color(0xff262323),
                          FontWeight.w400, () {}),
                    ]),
                subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      customText("15/4/2023", 16, Color(0xff262323),
                          FontWeight.w500, () {}),
                      customText("15/4/2024", 16, Color(0xff262323),
                          FontWeight.w500, () {}),
                    ]),
              ),
              //___________________________________________________________________________time
              const Divider(
                thickness: 5,
                color: Color(0xffF4F5F7),
              ),
              ListTile(
                title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      customText("Start Time", 11, Color(0xff262323),
                          FontWeight.w400, () {}),
                      customText("End Time", 11, Color(0xff262323),
                          FontWeight.w400, () {}),
                    ]),
                subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      customText("3:00 PM", 16, Color(0xff262323),
                          FontWeight.w500, () {}),
                      customText("7:00 PM", 16, Color(0xff262323),
                          FontWeight.w500, () {}),
                    ]),
              ),
              const Divider(
                thickness: 5,
                color: Color(0xffF4F5F7),
              ),
              //__________________________________________________________________________________expanses card
              customText("Toal Expenses", 18, Color(0xff3E5481),
                  FontWeight.w700, () {}),
              SizedBox(
                height: 8,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customText("Hours Per Day", 14, Color(0xff262323),
                      FontWeight.w400, () {}),
                  customText(
                      "4 hours", 16, Color(0xff262323), FontWeight.w500, () {}),
                ],
              ),
              const Divider(
                thickness: 3,
                color: Color(0xffF4F5F7),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customText("Total Days", 14, Color(0xff262323),
                      FontWeight.w400, () {}),
                  customText(
                      "05 Days", 16, Color(0xff262323), FontWeight.w500, () {}),
                ],
              ),
              const Divider(
                thickness: 3,
                color: Color(0xffF4F5F7),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customText("Amount Paid", 14, Color(0xff262323),
                      FontWeight.w400, () {}),
                  customText(
                      "\$15980", 16, Color(0xff262323), FontWeight.w500, () {}),
                ],
              ),
              const Divider(
                thickness: 3,
                color: Color(0xffF4F5F7),
              ),
              //_______________________________________________________________________condition card
              SizedBox(
                height: 15,
              ),
              customText("Terms & Conditions", 18, Color(0xff262323),
                  FontWeight.w500, () {}),
              Text(
                "Cras quis nulla commodo, aliquam lectus sed, blandit augue. Cras ullamcorper bibendum bibendum. Duis tincidunt urna non pretium porta. Nam condimentum vitae ligula vel ornare. aliquam lectus sed, blandit augue. Cras ullamcorper.",
                maxLines: 5,
                style: GoogleFonts.poppins(
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
                  // color:
                ),
              ),

              //_________________________________________________________________________request btn
              SizedBox(
                height: 15,
              ),
              customButton(() {
                Get.to(ThanksView());
              }, "Send Request", 16, Color(0xff001B48), ""),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
