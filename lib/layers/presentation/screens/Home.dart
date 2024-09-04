import 'package:flutter/material.dart';
import 'package:translate_app/core/utilities/colors/AppColors.dart';
import 'package:translate_app/layers/data/country_code.dart';
import 'package:translate_app/layers/presentation/screens/Tabs/CameraTab.dart';
import 'package:translate_app/layers/presentation/screens/Tabs/HandWrittingTab.dart';
import 'package:translate_app/layers/presentation/screens/Tabs/Text.dart';
import 'package:translate_app/layers/presentation/widgets/BottomDialog.dart';
import 'package:translate_app/layers/presentation/widgets/BottomPicker.dart';
import 'package:translate_app/layers/presentation/widgets/TabItem.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Map<String, String> new_codes = {
    'Language-Detection' : 'auto'
  };
  late String fromLanguage;
  late String toLanguage;

  @override
  void initState() {
    new_codes.addAll(codes);
    fromLanguage = new_codes.keys.toList()[0];
    toLanguage  = codes.keys.toList()[1];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
          extendBody: true,
          backgroundColor: Theme.of(context).colorScheme.tertiary,
          resizeToAvoidBottomInset: true,
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.surface,
            centerTitle: true,
            title: Text(
              'Translate App',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    size: 30,
                    Icons.settings,
                    color: Theme.of(context).iconTheme.color,
                  )
              )
            ],
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(50),
              child: ClipRRect(
                child: Container(
                  height: 50,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  color: Theme.of(context).colorScheme.surface,
                  child: TabBar(
                    indicatorSize: TabBarIndicatorSize.tab,
                    dividerColor: Colors.transparent,
                    indicator: BoxDecoration(
                      color: Theme.of(context).colorScheme.tertiary,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          topLeft: Radius.circular(10)
                      ),
                    ),
                    labelColor: Theme.of(context).colorScheme.primary,
                    unselectedLabelColor: Theme.of(context).colorScheme.secondary,
                    tabs: [
                      TabItem(
                        icon: Icons.text_fields,
                        title: 'Text',
                        iconColor: Theme.of(context).iconTheme.color,
                        titleColor: Theme.of(context).textTheme.titleMedium?.color,
                      ),
                      TabItem(
                        icon: Icons.camera_alt,
                        title: 'Camera',
                        iconColor: Theme.of(context).iconTheme.color,
                        titleColor: Theme.of(context).textTheme.titleMedium?.color,
                      ),
                      TabItem(
                        icon: Icons.edit,
                        title: 'Hand Writing',
                        iconColor: Theme.of(context).iconTheme.color,
                        titleColor: Theme.of(context).textTheme.titleMedium?.color,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          body: TabBarView(
            children: [
              TextScreen(fromLanguage: fromLanguage, toLanguage: toLanguage,),
              CameraScreen(fromLanguage: fromLanguage, toLanguage: toLanguage,),
              HandWrittingScreen()
            ],
          ),
          bottomNavigationBar: BottomPicker(
            backgroundColor: Theme.of(context).colorScheme.primary,
            iconColor: Theme.of(context).colorScheme.tertiary,
            textStyle: Theme.of(context).textTheme.displayMedium,
            fromLanguage: fromLanguage,
            toLanguage: toLanguage,
            fromLanguagePicker: (){
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return BottomDialog(languageCode: new_codes,);
                  }
              ).then((value){
                if(value != null) {
                  setState((){
                    fromLanguage = value;
                  });
                }
              });
            },
            toLanguagePicker: (){
              showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return BottomDialog(languageCode: codes,);
                  }
              ).then((value){
                if(value != null) {
                  setState((){
                    toLanguage = value;
                  });
                }
              });
            },
          ),
        ),
      ),
    );
  }
}
