package;

import Part2.getSimilarity;

import Part1.getDistance;

import Utils.readInput;

function main() {
  final lists = readInput('day_01/content/input.txt');
  final distance = getDistance(lists);
  trace('distance: ${distance}');

  final similarity = getSimilarity(lists);
  trace('similarity: ${similarity}');
}
