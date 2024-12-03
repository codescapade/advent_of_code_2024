package;

import Part2.getMultipliedP2;

import Part1.getMultipliedP1;

import sys.io.File;

function main() {
  final content = File.getContent('day_03/content/input.txt');
  final multipliedP1 = getMultipliedP1(content);
  trace(multipliedP1);

  final multipliedP2 = getMultipliedP2(content);
  trace(multipliedP2);
}
