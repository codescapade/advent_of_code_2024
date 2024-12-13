package;

import Part1.getValidUpdateCount;

import Part2.getInvalidUpdateCount;

import Utils.getRulesAndUpdates;

function main() {
  final data = getRulesAndUpdates('day_05/input/testInput.txt');
  var updateCount = getValidUpdateCount(data);
  trace(updateCount);

  updateCount = getInvalidUpdateCount(data);
  trace(updateCount);
}
