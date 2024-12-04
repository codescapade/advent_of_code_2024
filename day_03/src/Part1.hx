package;

function getMultipliedP1(input: String): Int {
  final mulRegex = ~/mul\((\d+),(\d+)\)/g;
  var result = 0;

  while (mulRegex.match(input)) {
    final left = Std.parseInt(mulRegex.matched(1));
    final right = Std.parseInt(mulRegex.matched(2));

    result += (left * right);

    input = mulRegex.matchedRight();
  }

  return result;
}
