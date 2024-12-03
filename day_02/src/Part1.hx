function countSafeReports(reports: Array<Array<Int>>): Int {
  var count = 0;
  for (report in reports) {
    if (isReportSafeP1(report)) {
      count++;
    }
  }

  return count;
}

function isReportSafeP1(report: Array<Int>): Bool {
  if (report.length < 2) {
    return true;
  }

  final goingUp = report[0] < report[1];
  var lastLevel = report[0];

  for (i in 1...report.length) {
    final level = report[i];
    final change = level - lastLevel;
    if (change == 0 || (change > 0 && !goingUp) || (change < 0 && goingUp) || Math.abs(change) > 3) {
      return false;
    }
    lastLevel = level;
  }

  return true;
}
