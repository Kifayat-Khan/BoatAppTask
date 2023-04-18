import 'package:boot_app_task/linker.dart';

class SearchFilterView extends StatelessWidget {
  const SearchFilterView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController filterSerachController = TextEditingController();

    return Scaffold(
//___________________________________________________________________________appbar
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 200,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      Get.to(HomeView());
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: Color(0xff262323),
                    )),
                customText(
                    "Reset", 14, Color(0xff262323), FontWeight.w500, () {})
              ],
            ),
            customText("Filter", 23, Color(0xff262323), FontWeight.w600, () {}),
            const Divider(
              thickness: 10,
              color: Color(0xffF4F5F7),
            ),
            customText(
                "Categories", 18, Color(0xff3E5481), FontWeight.w700, () {}),
            const SizedBox(
              height: 8,
            ),
            //____________________________________________________________________________filter search field
            customTextFormField(filterSerachController, "All Categories", false,
                null, Icons.expand_more),
          ],
        ),
      ),
//_____________________________________________________________________________body
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 14,
              ),
              //_____________________________________________________________________________________scrooling section
              customText(
                  "Pricing", 18, Color(0xff3E5481), FontWeight.w700, () {}),
              //const SizedBox(height: 8,),
              //_____________________________________________________________________________________prices
              ListTile(
                leading: customText(
                    "0\$", 14, Color(0xff9FA5C0), FontWeight.w700, () {}),
                trailing: customText(
                    "50000\$", 14, Color(0xff9FA5C0), FontWeight.w700, () {}),
              ),
              //__________________________________________________________________________________pricing bar
              GetBuilder<SearchController>(builder: (controller) {
                return RangeSlider(
                    values: Get.find<SearchController>().currentPriceRange,
                    max: 50000,
                    divisions: 50000,
                    labels: RangeLabels(
                      Get.find<SearchController>()
                          .currentPriceRange
                          .start
                          .round()
                          .toString(),
                      Get.find<SearchController>()
                          .currentPriceRange
                          .end
                          .round()
                          .toString(),
                    ),
                    onChanged: (RangeValues values) {
                      Get.find<SearchController>().currentPriceValue(values);
                    });
              }),

              //_______________________________________________________________________________________date and time
              const SizedBox(
                height: 20,
              ),
              customText(
                  "Date & Time", 18, Color(0xff3E5481), FontWeight.w700, () {}),
              //const SizedBox(height: 8,),
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

              //____________________________________________________________________________________________star and end date
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
              const Divider(
                thickness: 5,
                color: Color(0xffF4F5F7),
              ),
              //________________________________________________________________________________________start and end time
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

              const SizedBox(
                height: 20,
              ),
              //__________________________________________________________________________search button
              customButton(() {}, "Search", 16, Color(0xff001B48), ""),
               const SizedBox(
                height: 35,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
