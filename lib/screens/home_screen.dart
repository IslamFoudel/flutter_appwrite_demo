import 'package:flutter/material.dart';
import 'package:flutter_app_write_trial_task/constants/appcolors.dart';
import 'package:provider/provider.dart';
import '../providers/data_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dataProvider =
        Provider.of<DataProvider>(context); // initialize provider

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Appwrite Demo',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: AppColors.primary, // Appwrite's color for AppBar
      ),
      body: Column(
        children: [
          Expanded(
            child: dataProvider.isLoading // simple check
                ? const Center(
                    child: CircularProgressIndicator()) // case loading
                : dataProvider.items.isEmpty
                    ? const Center(
                        child: Text(
                            'No data available. Kindly Click load data.')) // case no data
                    : ListView.builder(
                        itemCount:
                            dataProvider.items.length, // set length of list
                        itemBuilder: (context, index) {
                          final item = dataProvider.items[index];
                          return ListTile(
                            title: Text(
                              '- ${item.title}',
                              style: const TextStyle(
                                color: Colors.black87,
                              ),
                            ), // set title of entry
                            subtitle: Text(
                              item.description,
                              style: const TextStyle(
                                color: Colors.black54,
                              ),
                            ), // set description of entry
                          );
                        },
                      ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0), // Add space around the button
            child: SizedBox(
              width: double.infinity, // Button takes full width
              child: ElevatedButton(
                onPressed: () => dataProvider.loadData(),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary, // Appwrite pinkish-rose
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                ),
                child: const Text(
                  'Load Data', // can be localized if needed as per any text in screen
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
