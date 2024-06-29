import 'package:crafty_bay/data/network_caller/network_caller.dart';
import 'package:crafty_bay/data/utility/urls.dart';
import 'package:get/get.dart';

class CompleteProfileController extends GetxController{
  bool _inProgress =false;
  bool get isInProgress =>_inProgress;
  Future<bool> readProfile() async{
    final result = await NetworkCaller.getRequest(url:Urls.readProfile);
   if(result.responseData['data']==null){
     return false;
   }
   return true;
  }
  Future<bool>createProfile(Map<String,dynamic> body) async{
    _inProgress =true;
    update();
    final result = await NetworkCaller.postRequest(url:Urls.createProfile,body:body);
    if(result.responseData['msg']=='success'){
      _inProgress =false;
      update();
      return true;
    }
    else{
      _inProgress =false;
      update();
      return false;
    }
  }
}