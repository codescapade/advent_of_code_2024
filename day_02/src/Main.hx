package;

import Part2.countDampenerSafeReports;

import Part1.countSafeReports;

import Utils.readReports;

function main() {
  final reports = readReports('day_02/content/input.txt');
  final count = countSafeReports(reports);
  trace(count);

  final dampenerCount = countDampenerSafeReports(reports);
  trace(dampenerCount);
}
