class Snake {
  int x = 4;
  int y = 4;

  var bodyPos = [45, 55];

  void move(String direction) {

    bodyPos.insert(0, getpos());
    bodyPos.removeLast();

    if (direction == "up") {
      updateY(-1);
    } else if (direction == "down") {
      updateY(1);
    } else if (direction == "left") {
      updateX(-1);
    } else if (direction == "right") {
      updateX(1);
    }
  }

  void updateX(int modifier) {
    print("x: $x, y: $y");
    x += modifier;
  }

  void updateY(int modifier) {
    print("x: $x, y: $y");
    y += modifier;
  }

  int getpos() {
    print("x: $x, y: $y");
    return y*10 + x; 
  }
}