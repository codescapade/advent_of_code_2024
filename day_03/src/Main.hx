package;

import Part2.getMultipliedP2;

import Part1.getMultipliedP1;

import sys.io.File;

function main() {
  final input = File.getContent('day_03/input/input.txt');
  final multipliedP1 = getMultipliedP1(input);
  trace(multipliedP1);

  final multipliedP2 = getMultipliedP2(input);
  trace(multipliedP2);
}
