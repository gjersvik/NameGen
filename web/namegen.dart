import 'boy.dart';
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
  print(getRandom(boy,boy_length));
}