import 'package:appwrite/appwrite.dart';
import '../models/item.dart';
import '../constants/constant.dart';

class AppwriteService {
  late final Client client;
  late final Databases databases;
  final String databaseId = Constants.databaseId; // set database id

  AppwriteService() {
    client = Client()
      ..setProject(
          Constants.projectId); // set project id for Client initialization

    databases = Databases(client); // initialize database
  }

  Future<List<Item>> fetchItems() async {
    try {
      final response = await databases.listDocuments(
        collectionId: Constants
            .collectionId, // set collection id, that will fetch its entries
        databaseId: databaseId, // set database id
      );

      // Map the documents to a list of Item objects
      return response.documents.map((doc) => Item.fromJson(doc.data)).toList();
    } catch (e) {
      return []; // Return empty list on error fetching "used for no data case"
    }
  }
}
