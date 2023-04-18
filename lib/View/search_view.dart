import 'package:boot_app_task/linker.dart';


class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  TextEditingController searchController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 100,
        centerTitle: true,
        leading: IconButton(onPressed: (){
          Get.back();
        }, icon: const Icon(Icons.chevron_left,color: Color(0xff200E32),size: 30,)),
        title: customTextFormField(searchController, "Search", false, Icons.search, Icons.cancel),
          actions: [
            IconButton(onPressed: (){
              Get.to(SearchFilterView());
            }, icon: const Icon(Icons.sync_alt_rounded,color: Color(0xff200E32),size: 30,))
          ],
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Divider(thickness: 10,color: Color(0xffF4F5F7),),
            //_____________________________________________________________________search history
            ListTile(
              leading: Icon(Icons.access_time),
              title: customText("Pancakes", 17, Color(0xff3E5481), FontWeight.w500, () { }),
              trailing: Icon(Icons.call_made_outlined),
              
            ),
             ListTile(
              leading: Icon(Icons.access_time),
              title: customText("Salad", 17, Color(0xff3E5481), FontWeight.w500, () { }),
              trailing: Icon(Icons.call_made_outlined),
              
            ),
            const Divider(thickness: 10,color: Color(0xffF4F5F7),),
            customText("Search Suggestions", 17, Color(0xff3E5481), FontWeight.w500, () { }),
            Row(
              //______________________________________________________________search suggestions
             // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [
                 searchSuggestionBtn("'Suchi'", () { }),
                const  SizedBox(width: 20,),
                 searchSuggestionBtn("SandWich", () { }),
              ],
            ),
            Row(
              
             // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children: [
                 searchSuggestionBtn("Seafood", () { }),
                 const SizedBox(width: 20,),
                 searchSuggestionBtn("fried rice", () { }),
              ],
            )
          ],
        ),
      ),
    );
  }
}