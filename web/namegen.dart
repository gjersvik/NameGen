import 'boy.dart';
import 'girl.dart';
import 'lastname.dart';
import 'dart:math';

String getRandom(Map names,int sum){
  var random = new Random();
  var rand = random.nextInt(sum);
  var name;
  
  names.forEach((n,v) {
    if (rand >= 0) {
      name = n;
    }
    rand -= v;
  });
  
  return name;
}

main(){
  var boyname = getRandom(boy, boy_length);
  var girlname = getRandom(girl, girl_length);
  var lastname = getRandom(last, last_length);
  print('$boyname and $girlname $lastname');
}