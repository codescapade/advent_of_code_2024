import Utils.isValidList;
import Utils.RulesUpdates;

function getValidUpdateCount(data: RulesUpdates): Int {
  var updateCount = 0;
  for (list in data.updates) {
    final validList = isValidList(list, data.rules);
    if (validList) {
      final middleIndex = Math.floor(list.length / 2);
      updateCount += list[middleIndex];
    }
  }

  return updateCount;
}
