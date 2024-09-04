import 'package:flutter/material.dart';
import 'package:translate_app/layers/data/country_code.dart';
import 'package:translator/translator.dart';
import 'package:translate_app/core/utilities/colors/AppColors.dart';

class TranslationScreen extends StatefulWidget {
  final String input;
  final String fromLanguage;
  final String toLanguage;

  const TranslationScreen({
    super.key,
    required this.input,
    required this.fromLanguage,
    required this.toLanguage
  });

  @override
  State<TranslationScreen> createState() => _TranslationScreenState();
}

class _TranslationScreenState extends State<TranslationScreen> {
  final _input_controller = TextEditingController();
  final _output_controller = TextEditingController();
  bool _isEmptyInput = true;
  // String output = "";

  @override
  void initState() {
    _input_controller.text = widget.input;
    translating(widget.input);
    super.initState();
  }

  void translating(String input) async{
    GoogleTranslator translator = GoogleTranslator();
    String? src = codes[widget.fromLanguage];
    String? dest = codes[widget.toLanguage];
    Translation translation;
    if(src != null && dest != null){
      translation = await translator.translate(input, from: src, to: dest);
      setState(() {
        // output = translation.text.toString();
        _output_controller.text = translation.text.toString();
      });
    }else{
      setState(() {
        // output = 'There seem to be an error !';
        _output_controller.text = 'There seem to be an error !';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Translation'),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_outlined),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: Center(
            child: ListView(
              children: [
                Padding(
                  padding: EdgeInsets.all(16),
                  child: TextFormField(
                    controller: _input_controller,
                    enabled: false,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: AppColors.white),
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: AppColors.white),
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                      ),
                    ),
                    minLines: 1,
                    maxLines: 10,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.gray,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                          width: 1,
                          color: AppColors.black
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 75.0,
                          spreadRadius: 2.0,
                          offset: Offset(
                            15.0,
                            15.0,
                          ),
                        )
                      ],
                    ),

                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(onPressed: () {}, icon: Icon(Icons.volume_up, color: AppColors.black,)),
                            IconButton(onPressed: () {}, icon: Icon(Icons.swap_horiz, color: AppColors.black,)),
                            IconButton(onPressed: () {}, icon: Icon(Icons.zoom_out_map, color: AppColors.black,)),
                            IconButton(onPressed: () {
                              setState(() {
                                _isEmptyInput = !_isEmptyInput;
                              });
                            }, icon: Icon(Icons.clear, color: AppColors.black,)),
                          ],
                        ),
                        TextFormField(
                          controller: _output_controller,
                          enabled: false,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: AppColors.gray,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(16)),
                            ),
                            disabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: AppColors.gray),
                              borderRadius: BorderRadius.all(Radius.circular(16)),
                            ),
                          ),
                          minLines: 1,
                          maxLines: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
        ),
      ),
    );
  }
}
