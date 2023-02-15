import 'package:appdid_test/data/helper/api_helper.dart';
import 'package:appdid_test/models/categories.dart';

class CategoriesRepoService {
  Future<Categories> getCategories() async {
    final json =
        await ApiHelper().get("www.themealdb.com/api/json/v1/1/categories.php");

    //print(json.runtimeType);

    return Categories.fromJson(json as Map<String, dynamic>);
  }
}
