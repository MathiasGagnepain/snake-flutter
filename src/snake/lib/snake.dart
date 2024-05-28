class Snake {
  int x = 4;
  int y = 4;

  void move(int newPos) {

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