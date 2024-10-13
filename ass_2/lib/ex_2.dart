void main() {
  const student = [
    10,
    50,
    60,
    70,
    80,
    90,
  ];
  var score = student.where((student) => student >= 50);
  print('student who pass the exam ${score.toList()}');
}
