
import 'ust.dart';

class Brain{
  int _sc=0;
List<Ust> _wus = [
  Ust('Some cats are actually allergic to humans', true),
    Ust('You can lead a cow down stairs but not up stairs.', false),
    Ust('Approximately one quarter of human bones are in the feet.', true),
    Ust('A slug\'s blood is green.', true),
  Ust('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    Ust('It is illegal to pee in the Ocean in Portugal.', true),
    Ust(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Ust(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    Ust(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Ust
    (
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Ust('Google was originally called \"Backrub\".', true),
    Ust(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    Ust(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),


   ];
void exb(){
  if(_sc < _wus.length-1){
   _sc++;
  }
}



String getus(){
 return _wus[_sc].usti;
}
bool getusa(){
  return _wus[_sc].ans;
}
}