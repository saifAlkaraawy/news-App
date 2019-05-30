import 'package:http/http.dart'as http;
import 'package:first_desgin001/utlites/api_utilities.dart';
import 'package:first_desgin001/modles/api_modle.dart';
import 'dart:convert' as convert;
class AuthorsAPI{

   Future<List<Author>>   fetchAllAuthors()async{

    String url=base_api+all_authors_api;
    List<Author>authors= new List<Author>();
    var response= await http.get(url);

       if (response.statusCode==200){
         var jsonData=convert.jsonDecode(response.body); // for decode information from json
         var data=jsonData["data"];// get in formation that contain key"data"
         for(var i in data){
           Author author= new Author(i["id"].toString(), i["name"].toString(), i["email"].toString(), i["avatar"].toString());
          // print("${author.id}  ${author.name} ");
           authors.add(author);
           //print(authors.length);
         }

       }

return authors;


  }


}