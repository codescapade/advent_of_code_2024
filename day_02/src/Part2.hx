import Part1.isReportSafeP1;

import sys.io.File;

function countDampenerSafeReports(reports: Array<Array<Int>>): Int {
  var count = 0;
  for (report in reports) {
    if (isReportSafe(report)) {
      count++;
    }
  }

  return count;
}

private function isReportSafe(report: Array<Int>): Bool {
  if (isReportSafeP1(report)) {
    return true;
  }

  for (i in 0...report.length) {
    var copy: Array<Int> = [];
    if (i == 0) {
      copy = report.slice(1);
    } else if (i == report.length - 1) {
      copy = report.slice(0, report.length - 1);
    } else {
      copy = report.slice(0, i).concat(report.slice(i + 1));
    }

    if (isReportSafeP1(copy)) {
      return true;
    }
  }

  return false;
}
