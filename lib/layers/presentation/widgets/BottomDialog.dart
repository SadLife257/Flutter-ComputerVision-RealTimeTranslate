import 'package:flutter/material.dart';
import 'package:translate_app/core/utilities/colors/AppColors.dart';

class BottomDialog extends StatefulWidget {
  final Map<String, String> languageCode;

  const BottomDialog({
    super.key,
    required this.languageCode
  });

  @override
  State<BottomDialog> createState() => _BottomDialogState();
}

class _BottomDialogState extends State<BottomDialog> {
  late List<String> countryName = widget.languageCode.keys.toList();
  late List<String> countryCode = widget.languageCode.values.toList();
  List<String> filteredItems = [];
  String _query = '';

  void search(String query) {
    setState(
          () {
        _query = query;

        filteredItems = countryName.where(
              (item) => item.toLowerCase().contains(
            query.toLowerCase(),
          ),
        ).toList();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height * 2 / 3;
    return SizedBox(
      height: height,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20
              ),
              child: TextField(
                style: const TextStyle(color: AppColors.black),
                onChanged: (value) {
                  search(value);
                },
                decoration: const InputDecoration(
                  hintText: 'Search...',
                  hintStyle: TextStyle(color: AppColors.black),
                  fillColor: AppColors.black,
                  prefixIcon: Icon(
                    Icons.search,
                    color: AppColors.black,
                  ),
                ),
              ),
            ),
            Expanded(
              child: filteredItems.isNotEmpty || _query.isNotEmpty
                ? filteredItems.isEmpty
                ? const Center(
                child: Text(
                  'No Results Found',
                  style: TextStyle(fontSize: 18),
                ),
              )
                  : ListView.builder(
                itemCount: filteredItems.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      Navigator.pop(context, filteredItems[index]);
                    },
                    title: Text(filteredItems[index]),
                  );
                },
              )
                  : ListView.builder(
                itemCount: countryName.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      Navigator.pop(context, countryName[index]);
                    },
                    title: Text(countryName[index]),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}