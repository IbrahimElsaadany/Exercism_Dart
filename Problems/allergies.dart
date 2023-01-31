import "dart:math";
class Allergies {
  static const List menu = ["eggs","peanuts","shellfish","strawberries",
                            "tomatoes","chocolate","pollen","cats"];
  bool allergicTo(String food,int score)
    => pow(2,menu.indexOf(food))==check_score(score);
  List<String> list(int score)
  {
    check_score(score);
    List<String> outcome=[];
    for(int i=1,n=0;n<score.bitLength;i*=2,n++)
      if(i&score==i) outcome.add(menu[n]); 
    return outcome;
  }
  static int check_score(int score)=>score>128?score%128:score;
}
