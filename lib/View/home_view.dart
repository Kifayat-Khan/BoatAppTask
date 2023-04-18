// ignore_for_file: prefer_const_constructors

import 'package:boot_app_task/linker.dart';
import 'package:flutter/services.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    TextEditingController searchCotroller = TextEditingController();
    return WillPopScope(
      onWillPop: () async{
        SystemNavigator.pop();
        return true;
      },
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 120,
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
            automaticallyImplyLeading: false,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 15,
                ),
                customText("Boat App", 24, const Color(0xff000000),
                    FontWeight.w500, () {}),
                    //___________________________________________________________________search field
                customTextFormField(searchCotroller,
                    "Search for boats in your area", false, Icons.search, null),
                // SizedBox(
                //   height: 5,
                // )
              ],
            ),
            //________________________________________________________________________tabbar()
            bottom: TabBar(
                unselectedLabelStyle: GoogleFonts.poppins(
                  color: Color.fromARGB(255, 17, 16, 16),
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
                unselectedLabelColor: Color.fromARGB(255, 17, 16, 16),
                labelStyle: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  //backgroundColor: const Color(0xff001B48),
                ),
                indicatorPadding: EdgeInsets.all(10),
                indicator: BoxDecoration(
                  color: const Color(0xff001B48),
                  borderRadius: BorderRadius.circular(13),
                ),
                //_____________________________________________________________appbar tabs
                tabs: const [
                  Tab(
                    child: Text("Popular"),
                  ),
                  Tab(
                    child: Text("Discover"),
                  ),
                  Tab(
                    child: Text("Domestic"),
                  ),
                  Tab(
                    child: Text("Explore"),
                  )
                ]),
      
          ),
          
          //___________________________________________________________________boday 
          body: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 1,left: 8),
              child: SingleChildScrollView(
                
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    //______________________________________________________________________________boday images
                    homeBodyImage(height * 0.40, width * 0.95, "assets/images/boat5.jpg" , "Boat Name", "Available by 3 Seat",(){
                      Get.to(BoatDetails());
                    },(){}),
                     //--------------------------------------------------------------------space between
                    SizedBox(height: 12,),
                    homeBodyImage(height * 0.40, width * 0.95, "assets/images/boat3.jpg" , "Boat Name", "Available by 5 Seat",(){
                      Get.to(BoatDetails());
                    },(){}),
                     //--------------------------------------------------------------------space between
                    SizedBox(height: 12,),
                    homeBodyImage(height * 0.40, width * 0.95, "assets/images/boat5.jpg" , "Boat Name", "Available by 3 Seat",(){
                      Get.to(BoatDetails());
                    },(){}),
                     //--------------------------------------------------------------------space between
                    SizedBox(height: 12,),
                    
                
                  ],
                ),
              ),
            ),
          ),
          //________________________________________________________________________bottom sreach button
         floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButton: GetBuilder<HomeController>(
            builder: (controller) {
              return FloatingActionButton(
                backgroundColor: Color(0xff001B48),
        child: const Icon(Icons.search,size: 40,), onPressed: () {
              Get.to(SearchView());
              Get.find<HomeController>().activeColor=3;
              Get.find<HomeController>().update();
              
        },);
            }
          ),
               //________________________________________________________________________bottom appbar
                bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        height: 60,
        notchMargin: 4.0,
        child: GetBuilder<HomeController>(
          builder: (controller) {
            return Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                //_____________________________________________________________________________home button
               bottomAppBarButton(Icons.home, "Home", 1, () { 
                Get.find<HomeController>().activeColor=1;
                Get.find<HomeController>().update();
      
               }),
                  //____________________________________________________________________________favorites button
                   bottomAppBarButton(Icons.favorite, "Favorites", 2, () {
                    Get.find<HomeController>().activeColor=2;
                    Get.find<HomeController>().update();
                    Get.to(()=>OffersView());
                    }),
                    //___________________________________________________________________________sreach button
                   bottomAppBarButton(null, "Search", 3, () {
                     Get.find<HomeController>().activeColor=3;
                     Get.find<HomeController>().update();
                     Get.to(SearchView());
                   }),
                  //_______________________________________________________________________________booking button
                   bottomAppBarButton(Icons.shop, "Booking", 4, () {
                    Get.find<HomeController>().activeColor=4;
                    Get.find<HomeController>().update();
                   }),
                    //_______________________________________________________________________profile button
                 
                 bottomAppBarButton(Icons.person, "Profile", 5, () {
                  Get.find<HomeController>().activeColor=5;
                  Get.find<HomeController>().update();
                 }),
              ],
            );
          }
        ),
        ),)
      ),
    );
  }
}
