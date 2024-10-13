enum Direction { NORTH, EAST, SOUTH, WEST }

class Robot {
  int x;
  int y;
  Direction direction;

  Robot(this.x, this.y, this.direction);

  void turnRight() {
    direction = Direction.values[(direction.index + 1) % 4];
  }

  void turnLeft() {
    direction = Direction.values[(direction.index + 3) % 4];
  }

  void advance() {
    switch (direction) {
      case Direction.NORTH:
        y++;
        break;
      case Direction.EAST:
        x++;
        break;
      case Direction.SOUTH:
        y--;
        break;
      case Direction.WEST:
        x--;
        break;
    }
  }

  void executeInstructions(String instructions) {
    for (var instruction in instructions.split('')) {
      switch (instruction) {
        case 'R':
          turnRight();
          break;
        case 'L':
          turnLeft();
          break;
        case 'A':
          advance();
          break;
      }
    }
  }

  @override
  String toString() {
    return 'Position: {$x, $y}, Facing: ${direction.name}';
  }
}

void main() {
  // Starting position at {7, 3} facing NORTH
  Robot robot = Robot(7, 3, Direction.NORTH);

  // Instructions to execute
  String instructions = "LRL";

  // Execute the instructions
  robot.executeInstructions(instructions);

  // Print final position and direction
  print(robot);
}
