library namegen;

import 'boy.dart';
import 'girl.dart';
import 'lastname.dart';

import 'dart:math';

class NameGen{
  var _random;
  
  NameGen([seed]){
    _random = new Random(seed);
  }
  
  String gender() => _random.nextBool() ? 'boy' : 'girl';
  String name(gender) => gender == 'boy' ? boyName() : girlName();
  String boyName() => '${_name(boy,boy_length)} ${_name(last,last_length)}';
  String girlName() => '${_name(girl,girl_length)} ${_name(last,last_length)}';
  
  String _name(Map names,int sum) {
    var rand = _random.nextInt(sum);
    var name;
    
    names.forEach((n,v) {
      if (rand >= 0) {
        name = n;
      }
      rand -= v;
    });
    
    return name;
  }
}
