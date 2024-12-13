import Utils.isValidList;
import Utils.RulesUpdates;

function getInvalidUpdateCount(data: RulesUpdates): Int {
  var updateCount = 0;

  for (list in data.updates) {
    final validList = isValidList(list, data.rules);
    if (!validList) {}
  }

  return updateCount;
}

function sortList(list: Array<Int>, rules: Map<Int, Array<Int>>) {}
