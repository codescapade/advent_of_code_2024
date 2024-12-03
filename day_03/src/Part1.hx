package;

function getMultipliedP1(content: String): Int {
  final mulRegex = ~/mul\((\d+),(\d+)\)/g;
  var result = 0;

  while (mulRegex.match(content)) {
    final left = Std.parseInt(mulRegex.matched(1));
    final right = Std.parseInt(mulRegex.matched(2));

    result += (left * right);

    content = mulRegex.matchedRight();
  }

  return result;
}
