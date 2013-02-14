import 'namegen.dart';
import 'dart:html';



main(){
  var namegen = new NameGen();
  var text = query('#text');
  
  updateText(gender){
    text.classes
    ..clear()
    ..add(gender);
    text.text = namegen.name(gender);
  }
  
  query('#boy').onClick.listen((e) => updateText('boy'));
  query('#girl').onClick.listen((e) => updateText('girl'));

  query('#name').onClick.listen((e) => updateText(namegen.gender()));
  
  updateText(namegen.gender());
}