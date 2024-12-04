package;

import Part1.getCountsP1;

import Part2.getCountsP2;

function main() {
  final inputPath = 'day_04/input/input.txt';

  var count = getCountsP1(inputPath);
  trace(count);

  count = getCountsP2(inputPath);
  trace(count);
}
