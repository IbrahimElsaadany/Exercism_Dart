import "position.dart";
import "orientation.dart";
class Robot {
  late int index;
  late Position position;
  late Orientation orientation;
  static const List<Orientation> orientations = [Orientation.north,Orientation.east,Orientation.south,Orientation.west];
  Robot(Position pos,Orientation or)
  {
    position = pos;
    orientation = or;
    index = orientations.indexOf(or);
  }
  void move(String steps)
  {
    steps.split('').forEach((c){
        switch(c)
        {
          case 'R':
            orientation=orientations[(index+1)%4];
            break;
          case 'L':
            orientation=orientations[(index-1)%4];
            break;
          case 'A':
            switch(orientation)
            {
              case Orientation.north :
                position.x++;
                break;
              case Orientation.east :
                position.y++;
                break;
              case Orientation.south :
                position.x--;
                break;
              default :
                position.y--;
            }
        }
     });
  }
}
